Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3519D600D
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 19:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657825612;
	h=To:Subject:From:Message-Id:Date;
	bh=SMgEJ2N8TUsLioYMR4bt5ZsxKuQTFE+JPCLprzF95ZE=;
	b=TLzQ6OB7TDCg0JU47fK54W77QhZ64OpIOumYbxQlSW28vdUgXcflzDAjvYid+IVQ
	SK/a/fxDzzp/hHFm7iR46ixbDxbYzRx/4+LTaEWWGVxiilRhgRuu0rx6va2WvI/mlon
	FUF0Bj+GMqQojO5inBgTFsa/Qt5+yv5I4u9tg3CM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657825612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SMgEJ2N8TUsLioYMR4bt5ZsxKuQTFE+JPCLprzF95ZE=;
	b=OuIUh8Qs5OO83c5dLJHaAI8T2hMHes3FEXo+8/GF5mg4+A/yP/TDf1HvccDhYl+X
	3oGwNlZckyrknPAfVBpvwbFpFkrqWmPj2KMDXXpbR0Jtbedg/7IaXgLdS6yKXY5q9AZ
	ZWLh/3uN6xxsw6mhX9KGyx7TPIHKkqVPn1xnxSfI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe1b51ed-080c00aa-bdf5-4f49-9b23-53623a0eae93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f23a6c382ee1ceb6f682db73709fcf830f316be22e6784e5fbc3d00fceba22f0
Date: Thu, 14 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657825612
