Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA8228F9
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 10:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652350799;
	h=To:Subject:From:Message-Id:Date;
	bh=JPse+EYfd6uPel/j14GNRwjkoUdFKI01xnjZi40x5rc=;
	b=MiuU5Ls16wvvTs8qM/F1/yiF0gd58H1emFCbIjIG+/thmjZ1K1yud6O8JHXf3MLi
	7Jp83nMDrycFd+sVnjSe2dlVR9Vf+m4kN59VwJWZlN6kBP3jkW+LCwtANOje7rg60MH
	i1Z2x2wDlvwev36wtwHveaQsOp6NwbrF9oZrHQT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652350799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JPse+EYfd6uPel/j14GNRwjkoUdFKI01xnjZi40x5rc=;
	b=fpTi6ab2R3roNeVDCNXZo1XylFzgasvLh6Rk6Po3e+8joQHllf9vJPsAts2UHKPJ
	yMUzQqV5G6GioVH1MJ4tjuFTrjh9b5K8IyQqgkPfEvdAIsmU0TsFD9UVpOFsEFCQTIA
	J0ErT8aMGrMlxRt1cmL53MK5NPvCBH37Sys7yHnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b7c84dba-7ea7b681-d8b1-4dbc-b9b7-0476e50a8d6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5675a64f683d0d96b352d47f1b2d6bd1c356860a23c9703ac1d4df9e8f3f8e53
Date: Thu, 12 May 2022 10:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652350799
