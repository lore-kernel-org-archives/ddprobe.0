Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A102F5A
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 12:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657023412;
	h=To:Subject:From:Message-Id:Date;
	bh=9QSI+/po9ZhBVZQ8ZIgJahA9XPOAHD03Y84VVSjnHDc=;
	b=Jva/DEr761oFaywhaHX+GBZ/KrFIDTrX+9SgwBhxqDaYpqa50o5QRour/Ocq0uJz
	KSjBmFV+Tb+wRNiV1HgyTL3pA0OyGYqbf4orclGxpYiMlDP7KZ/bFs4cORTyYH/wvuu
	Zs5pt3UH97ox26oSrDLBMWUWBv1fepII3EjtkdU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657023412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9QSI+/po9ZhBVZQ8ZIgJahA9XPOAHD03Y84VVSjnHDc=;
	b=BKro1r1PXkeG7dWFkNwbZubOCFGQHYZIapoIxl9hlSRvb2A60skaWgpMaArvFuru
	x3S61mQi9YuFZ+O84ppvk08dLEeyeGEcj66gYQcwDDJkl78WlL2YXoz1+UI0zlC4Cag
	NMpZ3CJQqloYOpQ7Dvh+TZLF/OA2GDYIFhE4aAjs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce4ab820-8ad13967-1f15-4282-af1c-7c2d428d4fe4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d524c1410f45e34f6a43b743d66cc9eaca66cb5bd3bcd3c92225c97696d1de76
Date: Tue, 5 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657023412
