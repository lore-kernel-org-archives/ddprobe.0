Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E831844
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647321984;
	h=To:Subject:From:Message-Id:Date;
	bh=kVqffDRXXEVXfM7kJP/+LnKxDCGr3KN+c1PYunwoh1c=;
	b=gxXTZER421SIangH2Y2DTRRJhbARDCSRiYX+QN7KrQ62fEq29PkePqGA6vTRNM2k
	K4lC0S1iqu8zYP4lpt3K1ZLso9RkTAOAd7vNYE9mLpXibWcLNn6eKoEDGtEcUd8fRZr
	yR3bhdN/7uDnjXn81RD5cPLpk596lLzKRJPvTiPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647321984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kVqffDRXXEVXfM7kJP/+LnKxDCGr3KN+c1PYunwoh1c=;
	b=UbiRNJnoQFNy0Q+jrHD3gFGrjpFaOlLjbamU8wY68+HTWl1UqTc7rPjsHrRtLYnu
	PlsqVTSrd4Of83dt37YBFlaYRyvxC05A2IyuGqU4EXfd634n7FpHxnVG4fkKsotZunB
	zMwhXx+9bG/76CltNCMvNvdHpAVcPKX3L4A192Uc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c0aaee7-bac8ffb7-e5bd-4e12-9d49-4818a0f061f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32bf4540007e307114a47b1a10f27894a3df48ef5681ffee696444af0bbd2ac4
Date: Tue, 15 Mar 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647321984
