Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1170328EE
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 16:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652976959;
	h=To:Subject:From:Message-Id:Date;
	bh=GpjzQmlLRt8UTScXC0bgKqPhcd+g+hb6UyZipP4iGFg=;
	b=MA4EUNdZVQsqy9FVuTPUk2zCnyrarVHPNA8Z4jZKKIs7aa3wpj6mQm4UEJiIOxr4
	XQQEq39D1vLuq0b4HRX0M9LYqFHWtvYbKCltj2Nn6DWWCTA/uL5q0HS9O1kcEn/I+lp
	qajm+OIyU1fFGfX2u8R1iCjST3daj7VSRRgzhVqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652976959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GpjzQmlLRt8UTScXC0bgKqPhcd+g+hb6UyZipP4iGFg=;
	b=CdMKz6Rn3iEIvCUu3+BFPry29F+mNrbjBwcrbeOZ3H7j8YjE0OkVJjgxFXKYm8zR
	jOKG9G4ObpvuPfFTDPGAleauf978mlJtju7ekfOP1tSZ3JVjP955DLEpe2YwgjyrxBF
	8rEeX1vhr6qtg5JTTo9yfExKFpDcoLIe3a9zbisU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd1abf1c-465d8473-441c-445f-8cb5-789ef7a579b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 203f41df18448fe71c2a81d28b94f129af56e627308a3c4a39d8b2f504ad05d1
Date: Thu, 19 May 2022 16:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652976959
