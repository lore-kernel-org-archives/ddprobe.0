Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606F52F44
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657793812;
	h=To:Subject:From:Message-Id:Date;
	bh=Ql7k6GUPLymQt8n030+7oaGUT75Br2+lwUi5mbE/Kno=;
	b=Du7cjiKJsyI3Cp7sFyw3N119jiHPeKAEg9r6VPSS62Aja0RGqUFoE1Pk2g9bF72+
	zJ67eExakF68uzjLNK/NxxsSoebuT9Ab7mhefz8Hh2niabk0f9Xa4dktxqrA9qIY1AQ
	cdRAsjwh9R6CAR34m/Toj2KlY2lkQJ2Qbo9RkEXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657793812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ql7k6GUPLymQt8n030+7oaGUT75Br2+lwUi5mbE/Kno=;
	b=FevJ6ABB1wvJUmsGOYpqfIyaX2nPVg9tToRqZq6eQheX4jUZ0mrqru1N/+6HX/tt
	I5FJybvFXJ5N1CRUDqcxsn6LQjcDTW1RdhrOjZTB9vW8O2VGBXprgjuerRgPs9uSwnN
	U/i/ayji6i0O9a8IeVZPZed1l4/Ie4l6Byxj8Oqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc36173e-529d4027-d73d-4ca6-8f51-37ce8bc3a0c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22a66ed76f8e17cd6e0be566a2d3290a2f7aff36d465abad599a7122a35182db
Date: Thu, 14 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657793812
