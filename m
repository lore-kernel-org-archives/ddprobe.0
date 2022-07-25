Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAC27E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 23:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658791612;
	h=To:Subject:From:Message-Id:Date;
	bh=ahmDtpn7qKgNr+3GeJ1207ouRkEuzOw3SjZsRz0y4Z4=;
	b=b6mVsKALrrU4leg1HkQi/YohnpXXXVKbn6avWTnq9b9v305eYrXNzMo88L9lB/XL
	VR6LZwwIMwMEzYKWDl4nsUmEKph7P73FQDy0OePzHrASLguY4Fs/Hng148aO3xOhJ1P
	deuztJqtRwa1sWla9BPFRGpvSG4ouv5qQzN1hYn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658791612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ahmDtpn7qKgNr+3GeJ1207ouRkEuzOw3SjZsRz0y4Z4=;
	b=WYdYi7pMjMsyt2oIkm1fIznEEwCLP5fatwIrmDHmZxKLUgxc/wkmP96/kz5sMrHm
	tihXxbDNP65Hd2dF+IUw9SVMSztZhexlCTeOHDYg06XLwVfqcsnyOQKwqzcA2gHD9or
	O5k5lKDydmrDm0kYt0KZvhgj0ryp0drnmjcFImnA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018237af4fce-ed3aa301-7a81-4736-b90e-a7425466311a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: addfe2c1daa028f17f698225a76752787ea2d3742bc8302e0fa4a8991b6ce075
Date: Mon, 25 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658791612
