Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB9F1840
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 01:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655170439;
	h=To:Subject:From:Message-Id:Date;
	bh=16TUTKlZLCF5iX7Xe6LuvjotmS7TTgikyEwRKyQTkC0=;
	b=LqUWxd0ORP1id1ve8XuU9R3LbZJUQe5RdfKSFhMXt2+mi58fvny223q/CehSUGML
	h8QejC2B+dgeOKQRKwxhORYygtMANHoihqJBqIGNCG6b/rypHk0B31D4+mHgsu1QlyQ
	GH/8zHb/FYSclPoOvVUXx69wbTI5ubTrFQ4WwRiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655170439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=16TUTKlZLCF5iX7Xe6LuvjotmS7TTgikyEwRKyQTkC0=;
	b=QZs7aPJ1Zvn4ecRtzR+HHgF54BTCTOTikV+zqFi1tuZOm2/iVAYu/9OLzSNtwbed
	XYxZlRya90ZW6RIvGeAN6kH7568/CuUXVa0nkU/uK1dDyyRfU1J7Exm7j4zFmdiU4ak
	i7tGvpywAn7K/qcIDSuIcCOcbE6nbZZ/Lfo27ogU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815fd89898-ac2a1f79-1842-4994-bc67-8f408777bf79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 659899c42c057a0f5b7bb89ce2ede129d74074b5be48f75daab74d19fe934735
Date: Tue, 14 Jun 2022 01:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655170439
