Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E103128E1
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 18:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652207819;
	h=To:Subject:From:Message-Id:Date;
	bh=K1XIPZp/XwdfQk9Ri6yXuTNEblvsXzCO6j1jkQgfFcU=;
	b=Kul+5UM8JwnYCTeAryHVfFQR+uq2v+8/j/vPxQpqrbHyoXNOEAKKL0b35jTVRNlJ
	PiCVIuBsnV42B90ERmO8DPBZV/lj+2Uy/ObT+2r6Vt0jCJXkugxL6k+nGBj0/Xpn8Xh
	1F2OtLgCnwrcarye095kP5DZl+HlpKvClLMidYJE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652207819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K1XIPZp/XwdfQk9Ri6yXuTNEblvsXzCO6j1jkQgfFcU=;
	b=jgSttWNIT0wuydqu9Jgc8D1DayolQJhxVX0fX9y5qy8WkZZL8cA55kkRhKhZjSeQ
	vg3pJjyV+TGARQA8JVAayqbpVxPUKXFyxyUYIUmAfweVF1KNsFljQb2FsLyZD35W40M
	MR7fWDGqPeX/oaTP4v39SaWKcv9YAOTMQ5rjTy0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af429a28-b38df807-d9a4-4d99-9f62-6431525063e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d74238508442bbd13a508fe40a7b1d3569aecd893900aa047607cd82f2bd70d
Date: Tue, 10 May 2022 18:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652207819
