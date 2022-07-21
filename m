Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3479623A0
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 04:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658377612;
	h=To:Subject:From:Message-Id:Date;
	bh=QIjTxFFZXappIWeG+DfkO4UHmfz5v/RpOg5JTMKaJYQ=;
	b=bPs0jazPMHZmWe8UJc+c5Pt56Yq2HoJ4AvsYu2iVytf+9jHD6vFR0gu6/ULx6f+f
	o08nUTB+FObcAGtmc85yO1twB0RgkR69V1Ew5UJvyKkW6wu3PdAUxvJqGOlkQUFk+Mb
	PeoHQPEvKXmEyUyVXTrU1aQg2ACozMppsOckeBBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658377612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QIjTxFFZXappIWeG+DfkO4UHmfz5v/RpOg5JTMKaJYQ=;
	b=jEjiiiM2hrBgODngy/ODOLqasFh/cm4n/DRYMTIiZbPDJaGohaNCwlexsxzhtCob
	CaTmlyXx4lU2Z/9RIrblSe0hg6LKrXypXkyCStI2lcMLQ7jZI0CL+CahuwrICjV/bzJ
	xBn2z4KKh8y2OVMVZxYEkF0gTblnOCZR+G4JpMeI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f022c37-3732373b-a1bb-422b-91ad-8ee8564a131a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ded99cbef2adc31eaf3a5a09bd2fdfdb1f7ec64534213d550cbccd900e9d08d8
Date: Thu, 21 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658377612
