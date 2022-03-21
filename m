Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A753257D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647879084;
	h=To:Subject:From:Message-Id:Date;
	bh=7KS0Yd72FTKCG/Y+qGjYXEE82A4mwBhytm3sIBiHJTQ=;
	b=hytBt2Q7mYQypiONFMLdmxJzTiAOWAN4n9h30vi0XQdBkaT3uwI9DvecuXHBEdME
	Iy+n5MqX/r+jfRB0U9vsJoJxE7pKcK3u4YLuR63EamF//WeunKzyeNE3wky71X1Fnde
	9AkPZFvqJkk2CH+laWUSl866r8M04wPymIvn3+CA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647879084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7KS0Yd72FTKCG/Y+qGjYXEE82A4mwBhytm3sIBiHJTQ=;
	b=TRE1IgLvWpPSTWZEXWS0+cLc5n64PzPnbMHW6O0jvV5mvo7VNITnqpHkGKU7KnQt
	mxd5EX1XQl5gAu6nAt0s2ewdpQqz94vL8EYNbuGYaaYmXsiTD+txLixK+2Q/BSVowgp
	yzktUeyKXNra9Eo+vUM/RPtsGi8q75pptmVOk/uo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad3f5aa5-b6b83b7e-7e7a-4d5b-a7f7-6e6d36269102-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c12b0c8cffd981ac1720240e60d350a7a8245c7c6d870420bf6df9b0470dbc8
Date: Mon, 21 Mar 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647879084
