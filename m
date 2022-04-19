Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115B27A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 13:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650373258;
	h=To:Subject:From:Message-Id:Date;
	bh=cJVNW2dkEUiT3OC0bsvOfzIeNzcXlFIIII2O9lmDwrI=;
	b=aqcnPvod9BSmeVyvDM23KUnPVrYDLsyybpXhG0W+NQ2l0a6kE+HqrR1phkNJKiMq
	GxRGpCdadltXxw0x9hwZY0o55Ivy2oz53YnCPY/E3cKpHf6gGxdTIrmsBPBsA/05cVE
	HPYbKR7RlljiDPnGxSCMfhaIVKLp1UDcyAlZgyI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650373258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cJVNW2dkEUiT3OC0bsvOfzIeNzcXlFIIII2O9lmDwrI=;
	b=U6o7eLRjLx3xBcZnr6kzqeK/DAyQVkk5xcWlyxnl/ukyrGg8T+6WCL5ZIpQlBlmC
	4/AwULu50nt594Y3CeRWxbhyWGDJ7LaHSj+hxxRrJB20Uo7HREeVgHXXTbgPL/voAhz
	BhwLvSj8PDwrAONaSQLkJhk7CDbbMe6Mpg/9tkd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041e96c52-58fb75bc-de77-4c52-aba2-5d55a4e08041-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 119592a636439b6dd5c0044325948d4572063d3898baebaa8c5d8a598bddc041
Date: Tue, 19 Apr 2022 13:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650373258
