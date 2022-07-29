Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428E72F22
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659105652;
	h=To:Subject:From:Message-Id:Date;
	bh=aY0rEG9boXdeErrJFiyQHeQZjQ3MCgnUODN0t+oo7Vg=;
	b=Zgd9XEfGBu4RB3KoCg322S8Z/Tf9LIIeh3gX6cmnzsq0289+CgF51ttPcq85Vdz6
	DQOg1UspOeSB0hi0B+URrWBeO9xB/RSoerYwts4JO5FTIrPP9/0KyEn9TzJOydO2rYw
	VXNXSkMdhBnwSWVfhQUG/OBaFXvBTX1brgttLH3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659105652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aY0rEG9boXdeErrJFiyQHeQZjQ3MCgnUODN0t+oo7Vg=;
	b=cPs5QCQVEhmDvWXq3W7koZnqNbheY1oovN4iyzW3rvV2cfossDoD0PhRICVZNtjx
	8rymC0U6nHi1TIcCP/z7P5Gbmh7MM/bOl4oyn69cVAESnmafBqa9lTfItu+hBjvKWFY
	q+JrJrRPj1s73Z1SzX80LT10Z85kKHnUlIQGZCBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a672f51-4f9526a7-c298-4c72-815a-fb22fc506ae5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 514d841a0597dd49acc302b90e6efc89ea4442079b7a6ed3213c0cc1e09e23e7
Date: Fri, 29 Jul 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659105652
