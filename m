Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233897E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 11:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646997685;
	h=To:Subject:From:Message-Id:Date;
	bh=55YKqzYO7WBxTNayvhfHg2SSYi/nmVNRjZlGqEaDeYY=;
	b=egNLlCO7mxOpXMlHu99CFYItEQzuyh/jXNurZxh3ZIbAVRg282+Gkslw7eAFcJA5
	tbZdLZ5/WdCZRU7KJEyb1yNkadvZhi1YRqV5aEevmDjLi6NluTFSBCEohWeQ1ggTaiM
	UzKd6yeDlg6mK9GISsjkrURtCcnoZh/WSldl+w38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646997685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=55YKqzYO7WBxTNayvhfHg2SSYi/nmVNRjZlGqEaDeYY=;
	b=Yfx5fr37vH2mQRfqAuMJ+8UW4XDSAopMe6gWJd2RrhvPW68+x18jtThhg9Apduu2
	k3zDWKVZVkiPlIxw/6KErGXNSdH83qt16PUosejMott27z7jVAIflUM61F/ZQrOqoZr
	HO3COc5rfbGQJNCKR0lO9MDI+m5gYezdyY5bVoX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78b64223-33b9ca38-b444-4420-bcf3-85e553461a3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba76f3e056b315109e218f04316d66d0056074bef6a5e1fb391655341b8f399d
Date: Fri, 11 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646997684
