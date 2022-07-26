Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1997A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658826412;
	h=To:Subject:From:Message-Id:Date;
	bh=JwXHwV6xWFNwo+ydelpiLvxNxvIu4aZE4VmDeWc4qTc=;
	b=Vq36bXAjYjMRj0qUROCWVDgay41DdvF6cBz0obE4VT5eltVXBaDCbBdNl0FGJu2z
	VWGx16w+45Sd+UByEMtD5l044DDzzb4FVaUe0Y5e5aj1m7RTm8D4at1feh7UZ1SDChG
	g0wLDIJCVg9OW9sAWuqTNaM4VLmvug0JFpG2TKS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658826412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JwXHwV6xWFNwo+ydelpiLvxNxvIu4aZE4VmDeWc4qTc=;
	b=NgA8MPIh67fAr5PItrj5pJ9VsNbWrDIShkUAY93zbD+aGF5f+/rzzmiRV/T391jP
	YVCmRizaBhBbHMdbKlu9ah5HcHqFHd0QtsCQ3sv/GalU0H6MTa2HiWieiesBLmQyHHB
	NEUlAXTU4C26wJZVp1da7xugBf8ebxNKqkkATDhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239c250ed-c479d5e1-c92c-436c-a07c-51b60fddfa91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c57f6a2f5ab45545fb0bfa3bfa8616717d5ff88e7351963bad8d4e1ffc5b936a
Date: Tue, 26 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658826412
