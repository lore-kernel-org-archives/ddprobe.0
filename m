Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A69020F9
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645422384;
	h=To:Subject:From:Message-Id:Date;
	bh=Ke+lsK2JmXCgmrkhGvvpkgFeB82yxvnNI+M9GXmcakc=;
	b=b4zKF06V2rCNbUbSP8mEWZDELveBSD+onLNMuhYl5v2Ne00dhrFTpJ8xFOpaYYxM
	SyTLSS9OUMD7DgEeSt+gjB4VVN3JOG6qlBxserQi0p5mmZlMrWDupSg0QtpTuYQlGmc
	93wD101rWpjfnJKYIzjHYr5R0k1+gJ4UwEUFHLXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645422384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ke+lsK2JmXCgmrkhGvvpkgFeB82yxvnNI+M9GXmcakc=;
	b=PylDIFdtrB7sEMJSh5L2A1WWikW4j9vuJ1Lzo/1m3LthZ1at+Qzbm5AojfiVUory
	kbVxXDgHVTt6u2yPZhtvAz+h0HNzX5pN3LGYm+ROjbKQ/dSNjm3w9l65xuTrr7pPndy
	UYh2dDeJqsPVWct8izk0LNFLTpxWkKcuZVOKsuds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ad1166f-5cfc9e22-86fa-4e2f-b7ca-80a68a85cd5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9b399cfa9a568b04c563c44bbb17465d97f3e30cc125cbe765ea9451e14a230
Date: Mon, 21 Feb 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645422384
