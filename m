Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B929F7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645402285;
	h=To:Subject:From:Message-Id:Date;
	bh=p3ZaYyVTKZEZksu6kaZuqhZRALbOSa/bbv2XBZi3cXk=;
	b=JXekJqrZ7XDNXMuNfuikZ3VNCP937WsDe4cP/hJe/yfpKPW0KPDE0SOLBYTWxDRY
	uYS7///ak4QZDpIefCPlcdvk5R46Hf3M28YEPUfWWDFDhc0YrMxs8L4Ti3e6yWCw1zV
	sJnpcij+eSbgS6t/Sa2lzxVTRnsS9R2fUBS8p1RA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645402285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p3ZaYyVTKZEZksu6kaZuqhZRALbOSa/bbv2XBZi3cXk=;
	b=KZiCbyAYJLefnHWdkQ+UZ+Humd+uFYjTegZ7whkigt2QNic4d1FzmVi2mptk7FvQ
	mWikcR0Dio+I1xorpQdePhXwEucPKtsdFUP8oC65H30Iqb4+JZpUZJEPchZ2G2K2/Nm
	7iiFwRbhZVUWJgKxFBHhsUPBcuBHqOc2mIW8eR2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f199e6320-3e25c89f-3328-4db7-afd8-62cab78dd2c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cd06a384379a056467df9cd45a3a5ab2b89aa5959289c47d0d399dc8198af56
Date: Mon, 21 Feb 2022 00:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645402284
