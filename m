Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811382564
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646202385;
	h=To:Subject:From:Message-Id:Date;
	bh=VRqPJ7y9YrWEzQa7UxOoXtMJeCGjVT3XPDNqyC9YDl4=;
	b=D3vin/O3wSJst/wJkW/ijgqWkmH0v9nj5a6WzUtb0k/9rE4aS67BsGIqqKskgwIU
	mqOSLGaU8HQOEMVVaXmTApbdM0gjP6lmggNFFhjiwzr/QLeRE/eWapkYyB5aJh6rm2O
	50gubAVQ6Oq+tgRPVmtjfTsfgp2KbHBPpWy27Hk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646202385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VRqPJ7y9YrWEzQa7UxOoXtMJeCGjVT3XPDNqyC9YDl4=;
	b=MkpCqwkHUjlKBTBF0msWWXSDq1qX2czfJ0xrqcITI1/0sgBiQEitQ+SUNLN3INzw
	Xs3DA1GDEMUGOaoP2uBnl2sdRlOwiioKaSHmc0jSwndLxD2yVGTU7Oe4XMEz+BsqTM/
	wKFJq1527rr6MgXvOZkg8M+8BMsbJuT+8zMtAT2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f494ef162-b4e7606a-6156-46f5-866a-80f8342fa5ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c675dfdbef12e4b026751111df7478f23faf2d1e6f08b7fe9e43bf562e970985
Date: Wed, 2 Mar 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646202384
