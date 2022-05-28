Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E8823C2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653733439;
	h=To:Subject:From:Message-Id:Date;
	bh=nPMios5NC+KjiFVbDC7SFodFCxDtof6FlgtuoAhBZx8=;
	b=T7deyShU/K4dVJC4We42cN7MKLizx2frUXetIfVHj3lcMoAbrxP+4ZZtY+nwqGez
	v5Ut/kH0owZ6ka2wBjqpozAQ3nPJdsFN/bWxZXf57WJkcp/rlDydMMJ5+t2LSR6JgTr
	OkaqMCyg2Iar/9ln/qEjiXRFZaBIx/j2BR8LDoj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653733439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nPMios5NC+KjiFVbDC7SFodFCxDtof6FlgtuoAhBZx8=;
	b=UgIQZIPQ2r7HKWGqnQeRhrfUdo4D/3E8TNHN0CSz7FW2/00X8Vfz6U66yxfXWDFa
	CCmfiaA/cogq7lb49++/tOlrceuVqWiL+aG0whfXc8WSaAkJceCdxnfRFOXCyAOLjOV
	5kR/UFRR3/vDV/RH/UM+5gtvmvzVZv/WemkoY4uQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a31b757-4d8df914-9b47-4dc2-8829-814e3bfc45af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 576428daf1dd50ee1450932df361ae0eec5966daf81ab05aa5c19b9da91a96fa
Date: Sat, 28 May 2022 10:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653733439
