Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF187B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 12:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655642819;
	h=To:Subject:From:Message-Id:Date;
	bh=kSX6lGht9ci9XBn1D9RR+G1a4UWikJ0q+pUhukwtSkM=;
	b=YTbn+e24Wf1Tz8BUP5/OdMb/Ueqz5UatbGQI8USmcBUTZrz+h24n1KbkxKcIcwPk
	txVegl1Co/3CUwmz64cB7LZSpYbQ8bQpY7d/JNGznhxCBy2BPdTJwkZiOsEZFoR349M
	mLSjg9SEQ8R87E+xGgbdxSbkcOWisGolcjlnJYHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655642819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kSX6lGht9ci9XBn1D9RR+G1a4UWikJ0q+pUhukwtSkM=;
	b=MY5sgsDNCHIxVhH2U4aZ+HxkvQRnZDLeaB9YvCL5+BFlZ9inr9CHrekGfBFDmUa/
	7qBDBTmOki9OzTHN9JPN3UI/kP6MXyJVVbzqwHmVT72yswH7mvQj7oiwAemsOMIeA8c
	xCfgb/klhsww2Yr48WMDh1bRdYetEiGuUV5Jc0t8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817c008ae2-3e783e42-6f84-4c24-9e5e-3c1580893bd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b55f7a77f0b1159e86f0273b92c9fa1a01773d16d80bcba74b30a107ed1c4603
Date: Sun, 19 Jun 2022 12:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655642819
