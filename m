Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2659E23A7
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 19:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648149238;
	h=To:Subject:From:Message-Id:Date;
	bh=S2foS8L6CCEhxCCMSHg5Cs2Zxr/kXjvhx3OkqDXUfms=;
	b=DeOVM0YCDM0+FMhxQCg9GbW28WlS4ZHCw4dplAfzOigXKzdTHW5VHSSgvbgzBdKR
	he/nVFgp588yhGK4Jlcx8D2nzOd/TuVU4EBZxOUG8yjP+tBKm48NUD6CzDsPN4y9FvW
	4z3NyoJNuCfXmcRMsZIQtd6X6KB5PH0KsexikjNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648149238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S2foS8L6CCEhxCCMSHg5Cs2Zxr/kXjvhx3OkqDXUfms=;
	b=Zgu5auWTq08r8T96VT1eQ3/4jZ2L6fP5hZayc8ENkyrc+PQ8HmeyLG/K7yI0qnEt
	st8kJ6Vst6fZrraTHCywzu0IZa2Sct7Yu1WtgRA05It5+UFKHQlCStRLDSvGyQzPZHz
	TKJw+EhyJz1ehPrA0as91im+8r0P16cVyDUWoFMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbd59920b-4b7f0cd5-7777-4509-b031-6bb88cafb9d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3ce476fb68a55007a4131977cb6935bb9ebcb16ca6f373a9a8cb1578cc3aff7
Date: Thu, 24 Mar 2022 19:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648149238
