Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB74185F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 19:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654369439;
	h=To:Subject:From:Message-Id:Date;
	bh=psHL7w8TTDSopqUzSqx0QbnrQ+iJemQUT+2s3F5/zu8=;
	b=Pc1ZlDa8yFI0nvkaVxlEnzVHonjaLf6qAeUdaXGdarSXt7uCQtvmxrZlS0H81Aw9
	4P/hO4Ec5bA0Ow1vXvK7nj1nsI7WdTZT0D3I2u6ak8HEOV9XRiDm3IfE7za9xuHc87S
	mHJ26mVRuI3A4NBIboe3Dq5HTOMbxtb+Du6niSb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654369439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=psHL7w8TTDSopqUzSqx0QbnrQ+iJemQUT+2s3F5/zu8=;
	b=Hep9vKUoV6rE7MEC4BEhida1vxS0DCDxcaGk1nZFd7BauHO6iMxsuNgkJU/6OzTW
	rIgxhWn6pXWNOkodzByPGsDdmtmJt/1tmFKmgzozyUiLGAle0EKzHlw++o8Jzm6NwqZ
	XS6tM3nYPDOMhBvtYhLWw7dIXfxke7coDAx8/mz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181301a4e4f-96436e57-4d57-4254-8186-38a90538192d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5def03c932e5d932d1495b4608c948960f57b115a6936f7441ce57241735e061
Date: Sat, 4 Jun 2022 19:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654369439
