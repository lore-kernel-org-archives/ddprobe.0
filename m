Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B3F7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 08:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651048318;
	h=To:Subject:From:Message-Id:Date;
	bh=z5zKMnWyrO80E9+5X9hO8Hp77Z591IdOEWmn8RbHtqc=;
	b=kjibqumDFl4wl/ol3HkJzr2o8zFQZ/ui3pExxt+ezHfenEciy5JMzo6XfQ+IhbFr
	baVx4kUJhUiTkovAaQrzuEh57C50hZ5Z+/vAw2fsx7PKM8O7aZPaDKDdGIb79KGdL96
	5MODYsxAAaOTKuSLgE9AnQXEnzefecPnsmeLEk+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651048318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z5zKMnWyrO80E9+5X9hO8Hp77Z591IdOEWmn8RbHtqc=;
	b=VCwNxqe8gODm+4yB/KGuI8zhkSZ7wiTWV2RZnrXuQN/1YcgUTuCgu1L5x4r3m8CC
	ffzu659d5dtyNNCJfK+lD2S8hJG5hHRvbReJoJo9LJd3NyW0NN1DbKCnY5IHUuI9iCy
	dmgOINKLXENsAVxVi4FZurTV9KynoDXLfi5BPpTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a260531-c5d2decc-3899-4cea-a673-d9641fbcdc6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29e186707da8c6c073f3fdeea1fb88f8b9ce412b69b75d895b763e0f3c752d0f
Date: Wed, 27 Apr 2022 08:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651048318
