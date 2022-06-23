Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD03468C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656023212;
	h=To:Subject:From:Message-Id:Date;
	bh=bOIbvB8IOXB/w1ZVkqKM7UjKqpJBqokSatkrSyVibwk=;
	b=GgyQFYoP+Iqkc98k9+LHsXPshiTD2725O1VJZ3Krjj94OHPZ1TpaFU3DrkcN4f8U
	xOFfD8I7Orn/TqeeGQ1Of48PPRsDXBPhrbSQY/WqZC7XUSyZq7Pwd8t5y8ySfHLujh9
	Byd6cbTqZghpN6dZHo661ONH5wjmdnX4atNj7TZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656023212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bOIbvB8IOXB/w1ZVkqKM7UjKqpJBqokSatkrSyVibwk=;
	b=LaZrxveWoKGg21rJU3LVogX36Vv7BvhyVok6hougXCxY5/195P8grK+uaSZP4OwT
	y0Hna7v2DBmXo541FlbWB5jJEdeBZlvuyidqtrak/1qApN0JAnLKNHFob/XaF+UT/dK
	pjwYG0fn5wpQMLTiE8UoJO9Aac1v/1Cz65E9tK1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192ace116-fc03e642-c8dd-4f6d-a33c-ba74f2c83ef7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acc6a5d9ed9ad5d37cd75a467055c054a21a08ae8ad4196d90f7b8465cdc4628
Date: Thu, 23 Jun 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656023212
