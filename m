Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D7D18D
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 08:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653122399;
	h=To:Subject:From:Message-Id:Date;
	bh=HX4rWgDZi/ti8CuGY1NVBPj0Of+5z32iVo8tQbe9i4Q=;
	b=GVIYw3OaYVo2c6zktUursSe37VExd//QRl8Xb3fer6hCk8WcCcSSJaMC2aXrnHQn
	d0rtURVXGCHktx9ypddNpPH4FEc4hHoa0NiaN76iA9dhWAebWCPkmhRc3k++qLEMAhv
	hoWsQLVzVIBtvc80RUMvx11AySXEyhAqn4P3Mnxw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653122399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HX4rWgDZi/ti8CuGY1NVBPj0Of+5z32iVo8tQbe9i4Q=;
	b=AsZK4+FOw9o8jGKcD9bawO+BFIvoviY+d6GIEWRRu+14sKciK9lPT54stS2I2UYa
	e12X+eXIpGwDAv5BVNYuvjoirgJejOvLEhX8hhhLhuKT/z1z7Kur/nzMzKudAhlcawY
	VNbHuKIUwCQnO6P4SSDdfCV0b1zWBVd/R43SZNrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e5c5fbfa-7ae33023-2750-4174-86cf-d89011dda896-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: feec4c996da06ea4f410b98290c5db0f09a32464e3961184e8f48ee7db2a1c51
Date: Sat, 21 May 2022 08:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653122399
