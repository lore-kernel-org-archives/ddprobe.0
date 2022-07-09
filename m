Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ECA47B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657394213;
	h=To:Subject:From:Message-Id:Date;
	bh=Tu5n4ekl5AM/lzeiVrrX30ARspta7UaCIiONyCoHA0Y=;
	b=PSVOia4fa/YWO75HnfjvsF+BmqOiuVwlni4y2xWBtJkHlI8u1y8U7rTWeEe9KUpJ
	pIF/WVS3IpI7oeADvGnCrCOiOXpazTMQW2UPwWipXOCGrFUjoTJvsswbM7uddrd2LZF
	l+pCOTwLtCO1kIwhsPxORyYhWTe6fEFf2zXeSGKk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657394213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tu5n4ekl5AM/lzeiVrrX30ARspta7UaCIiONyCoHA0Y=;
	b=EzBAJQbCQWJPohnYyNQmSSm9PIzJF2kJB0DqEBj3UNu8Xiy/0uqViT2quyvXSFP3
	QUswDXGyfmGhsMis91mVGAmTKKP/09vtsUoszW4VzWwPPbKDFEqirJafU+3I+4n2F6N
	BlOZn26B7xC7B8bswHIZrYbLXjceADmiwClC4d7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e464adf5-d084c903-e8be-42be-8ad6-85b1b06e4b64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ac7704a2d67ca39bf0ad899ca666d60c5a9fc9227410edbc39f994e6c9424c8
Date: Sat, 9 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657394212
