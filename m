Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F30528F8
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660507852;
	h=To:Subject:From:Message-Id:Date;
	bh=FIc3HcsnKOZOpUDYdQS+eXE+PhA4kckTSeKo+vRkgME=;
	b=NoYbaPyK3xPNIBDmbtrEhtO/W5C9LUmV1d4pa0OFkFhU/O3ZSTskInXmXAfWgEPM
	HLRVJI2q6Q4xr8vVxsy76hwgVD5IMn0lzSSw6CPi3R3WLrzKVs8NHK01lIc+8kK24FL
	7BL82jzDLoYqL2dKHjhdkbvRedj6/6oyuyhYYkIA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660507852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FIc3HcsnKOZOpUDYdQS+eXE+PhA4kckTSeKo+vRkgME=;
	b=IZmzAEXkP/hjnXUteCt/bquYYQ+Kogo/s7P/6916H9yEH2RUjWznRxyk8BH7WHeh
	6Az+VhzTh8zrSSdra0XE2QozWQohbcBBNp70mQMwIWSSiUSvYkeJ+kDBpzgF1eS18d/
	Y/7mke2AindkbdV9GNMEIKbjAS1AHmPBZ9wz8Pmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829dfb0f6f-8fadef4e-33a1-454d-8345-d08debb65e30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66666a5b2d1a7393be5769fe08a02a9ce59d62fe563849005411601992efa80b
Date: Sun, 14 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660507852
