Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F6710F5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 02:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654311419;
	h=To:Subject:From:Message-Id:Date;
	bh=IGziRSNCGbqHV/TXN0P8otygCuggPtNGl6Zh3d6EUc4=;
	b=SHKSBVxWsvSV7SVX/jpmErrVJ5NXwWZuPQdi6x4haz2GLJ8cJiuobyLqndvchxex
	GjxRHUxx1kv7CYuYWjQRnRnIts6hTFhtEOSxN22RoDQpclnxm0ZpM6yfzlzjp7wet0a
	ayvIUiYnL7I/AnTQ/1/GehPmUAIvUyBTnw+AMzjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654311419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IGziRSNCGbqHV/TXN0P8otygCuggPtNGl6Zh3d6EUc4=;
	b=EPIRd0HxMuBgQy1gj9nxc5Hs8swl4XHrIsy1RZcchLjuQYXJRfXju4nF09WsbeIj
	KxjEiKsvoforqD9ufbV3gVlG4Io6EhygZqXZWJie7J885YdOceEgFXSfz3VfuJe7CB2
	tE7PbIHgsDs45mvanRyE+vm7WAN6wc/QGFj2s9iI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812ca4fd92-7ce93f75-fe6b-4cb7-aa4d-e522d002f10e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 875dd66490565ff632fb86f88221225ed01a74e68d2d8d0efe53b2020fce8e87
Date: Sat, 4 Jun 2022 02:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654311419
