Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C23E7A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 16:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649003338;
	h=To:Subject:From:Message-Id:Date;
	bh=t6EoKvaPwvqe2//rw8byOu5mINP2m8bjrZ7uCMesnw0=;
	b=VfmvmiPvJ1llok4T6RDdbfwd3HDhdCHb1ilttyEnYbpiT8cgUClVnhb/OQ9oCNX/
	gAWJHZSBO+tsQDpuhTyZG5NkKedjAtIOc4b3JvGiy+kuVjOSrq8GnyPiQRG0nEGR81z
	oLxgAV8Qk1ZHfVhcDSLVQEreW9RrIvNoBvYgjzHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649003338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t6EoKvaPwvqe2//rw8byOu5mINP2m8bjrZ7uCMesnw0=;
	b=WzsmOIkSDsvtrWjSiqrRfx7yQ6ytJbKvCUVvG16AFpu+qG9GUKbs7kL9fSncl//8
	LlPaFbjLk823XUfJ2tJLulBLWiLHTVHMtRW64bratpi07PDLd+W7IUXjRz8SdjqbbBJ
	ttTBnJ74C7s8RHFri1X0rxTH0+9sYnPywR4P9mDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff0421a04-aff9d935-c644-48d5-b41c-2f6022d3174d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c0c6601430e36bb25cb94cb9ec9ef752eea95e2964f4fd810003068397f53e9
Date: Sun, 3 Apr 2022 16:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649003338
