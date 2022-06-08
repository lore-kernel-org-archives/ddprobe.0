Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D737B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 09:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654679519;
	h=To:Subject:From:Message-Id:Date;
	bh=kfuVmxVBIHKnbixLwATH4kjg5KXBlKh14yTVtHn8+fM=;
	b=CAZHEZLnyzxfGpHp7KHLwiCtl3nvKg7Zuz462nVkobAkYEPEKo5U+ZJEg8HskXTZ
	GpRPAFqxcwwGMhQ6tUJzgyJPIzwPxyD/Qtv8enjqJ1yD20YcpzGK+zDUTlS/3mN6409
	BBy70RpXj07gqURyw845/o6JJHGRGJe8JL+10oyA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654679519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kfuVmxVBIHKnbixLwATH4kjg5KXBlKh14yTVtHn8+fM=;
	b=HpIYCHSElZiOj256xlmFYfK6J/fXycJhWHLm1uCi1F/9XkKppWPGq59tCYUdylxl
	Tc0RsLM49SyPcWaAYBP2UCJ3ltVCvZSJgB9ZGsqXtPq59hI5Jsd9ioWP/iUcV4OZldL
	3mrFHiypfcx4jDEouHWwi250uP8XYJ0MHMjr668M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814295bfea-0c594afb-35e8-4fe0-91d5-2e4f54dcbd5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec0275b2424541c992ec793078382530b2e451d9eca7361e407c44c02ed6fef3
Date: Wed, 8 Jun 2022 09:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654679519
