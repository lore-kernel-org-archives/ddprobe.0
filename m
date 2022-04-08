Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC7B2564
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 16:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649434738;
	h=To:Subject:From:Message-Id:Date;
	bh=oF+XvuNgqXS4KpboKJOwOSiMc2A0MAdrFacTGoQgQ7E=;
	b=dpKfbRDEVgo1tZcX3l+qhQQuHtwRQVifoTTvbMpZG70ejS0r1qXXq56+aSmd7SU/
	dH6YJPzBCWuVWlssWPks8uE5x3LWVonlhajK7wPtjMyCu92S09rvHCFMWOVGBd1RrtF
	JYkS4nuDWNBijqiRROg/pdH4GNnQJV7ibXDGW6uo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649434738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oF+XvuNgqXS4KpboKJOwOSiMc2A0MAdrFacTGoQgQ7E=;
	b=C0BrG3uNf4/SBaDS/565RlT9wxFQLARsAl8ogwlZDN9DsbkPSIRFdviWm/eDeWiU
	Pt3p4SCdtmyS69VLziSWcCYMdLFlGuo0wyvs6y6pUE3dMEqCTjdtnX9H5jQoWZxtZvD
	aC8eTZKu3ksNuEt/OdTCMBTLArqC0PjfxoT0GwV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018009f8be80-e1d7aa48-0e61-48e5-9ddf-666c1ccc8f62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8ef394f7c3686fd02b1c172247635f4a69c640b988c0bf008f0919ee88e0b80
Date: Fri, 8 Apr 2022 16:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649434738
