Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6720733FB
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645481484;
	h=To:Subject:From:Message-Id:Date;
	bh=iavHup8doYxrA5FRRABOY9d32t5+WvWb1BI7w4ML5F0=;
	b=EfU5OE9GPdmbvEO4/RXS18aaEXTeO/Lv1FpX/GeAvXd++p0Ufm+hFMtZCADdyqcf
	VTTN56lDVZhUvl+J4Og84+tik35RT1m/tEm3NJzKoQcZEWM9syD/VHqtXSghuUG9WEU
	p9hcInfBy8inYxPbm9ghCkUdVUNnu5fQ96Sboc6E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645481484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iavHup8doYxrA5FRRABOY9d32t5+WvWb1BI7w4ML5F0=;
	b=KyfzXBEdAGJr4WLl/klCaLOrLTcC4URmhmSWMz9oDRFUo/NH6gGJUgwJvwMGbrX/
	zGQnXqx2+IjX2Af6FvywgoHfXO2dh4mPOl8m38kPIFaZOEYft+BM7n3cjSarJK97oRI
	L7xh39Ocg8TvEZivQetmHX63p9HiHcJKC+ENUH9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e56e1e2-561c440a-531d-4d43-af83-d5235af3d71e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8671f23e820b6a6bf9a92258eb5499e0005b76b276fb6bd0380dc0979b368cad
Date: Mon, 21 Feb 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645481484
