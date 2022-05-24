Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E495D2569
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 17:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653412139;
	h=To:Subject:From:Message-Id:Date;
	bh=Wqf8xKhl/sWm0hoh1/vawU0UEluM2GP2o7iWEPDWaYk=;
	b=LEDZoqM73VFyY2m5J9IcIbJaZS8JPUd1jJgJ9a1bfxADmDDmhW7K1jfdk0sXQ1u8
	k1nkcX8OJljdYPrfMQ1rBnDiiFb5V/+G8Y8nyHo6/idbceFAbsbbAVNiWgkvqUneCyL
	ocSVI/P1Jj/JbAHL9fDAbReHYNguv+w0K2GbyohY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653412139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wqf8xKhl/sWm0hoh1/vawU0UEluM2GP2o7iWEPDWaYk=;
	b=MzUSNiZaor9bBU0nb1zQVnaFdBxEVvCyFjj3dtP7OqquxEZdLSLcrEQzwn/PRRLH
	nvwrsnuoG99fZswsfi5BhOO3ANmizDVt1k24NAI7aPb4bG7SEuqRwCBN5f4ng1MfsNm
	YKRRTYYunmJbjbSNxj8mNKftc7EnpCDwADVyNtt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f70b110a-5a9e0683-9bf4-4a0b-a6c2-d853c07edadd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfc9283744dfd20107fdd658ba823aff1a226ceae46a795b1450c04015a05d62
Date: Tue, 24 May 2022 17:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653412139
