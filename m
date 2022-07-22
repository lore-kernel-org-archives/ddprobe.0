Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93ED75C88
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658525812;
	h=To:Subject:From:Message-Id:Date;
	bh=REgFcHBkEqTCNZ1eGLkUoeH9ARfcUM81qzXI2Sbm/do=;
	b=G4kbIjcGsooafZhRd7Fz2/7RYWZGMta0GWkJ2Vt/glkD+t9bDIAL/6RpJCVq84Lj
	wxzEeycnvW8HVeqdw6UmHG24wmO7n2jrZj9daVzhoQqXaKl7fOXsRjhweGgEBwwDJ2s
	Evw62oifhxQg9Vi0Tqe2cbPUCruigSFUfQJD6EWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658525812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=REgFcHBkEqTCNZ1eGLkUoeH9ARfcUM81qzXI2Sbm/do=;
	b=VP+F28fWhw7oudURbMpg8/GYUU6R3tVSspWGR8U0NZizs7uzKfr5TN8LbuuMfMwA
	1IRjmomVW5Eca7VC14LAMfoFDZmkKKV3LUoADcMsAsgDlZGMtc3AsokiNWsniNiudWW
	cbGLO0rFk5FcVCYI7/zPZ/IpmCVLvLn4Vw2Cxv48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018227d7861d-a3871661-5cb3-465b-b497-2100d375973e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29f3d89d0cffe8ac4fb59fe52bd5d330a6278c94039c331307fc665201423aff
Date: Fri, 22 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658525812
