Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDE96452
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 00:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646786184;
	h=To:Subject:From:Message-Id:Date;
	bh=SvUG5YpUXRYpKmbPY3ov+7lcqzy73qEBuggpmEgBC0Y=;
	b=Cqcc8F+rSBhWfEJWG5ZThLhQ/2C5FG+icjVeiRJgUnN2tFAOsbrmTs+XRC1gPyMv
	ZGLtBxqEWvgHF9OS+7BuAFUZ3hoUchG3Ps/Ema8FdyTxWZwfokskCyTXXtj/DQ/rcwK
	hPh/dkDEQCmBtjCFp+g/tj8GgIygr2j4co5bba9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646786184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SvUG5YpUXRYpKmbPY3ov+7lcqzy73qEBuggpmEgBC0Y=;
	b=d5E5KuvbUg6N2qNZsJxERF3LUPq58flQI87TH2HIdiorKZCbImwyIhRMRbb7uH89
	Cl8aXiXV3GFpGsbyg499i+sUCeZbvDPPntEtQ9C1MkKHCXAPmFik3kR2OyaqbjH5h4N
	cK/dodxksjdnJJF+H8T6GTNWeTSYYn10P7hXvcJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c1b064b-82c63ad8-ccde-43ad-96b6-87c5b3947692-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75124ce6f238a4b444b4a304771b4fc2fb3e33ce2f923522508405e82490ed22
Date: Wed, 9 Mar 2022 00:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646786184
