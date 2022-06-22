Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1C6137A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 11:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655896680;
	h=To:Subject:From:Message-Id:Date;
	bh=C8qj6IQTHdflhnC4glNWUG/ivUtCqmBjyAOCkEGaIus=;
	b=cOfMec3AaMrIU7KrKVcIFFF/TD0VPn2sXXi9rHR7x4m81ejLxe+yL0JeFCaLMA3R
	RZtRodGgloJwc3xhENdVGhxcVxZel4BkrSKzEuIifMnaHI80JGiaZmPXLaUudFGhCh6
	VnVkqsLTTflJUkIEfgUhsjDyIjrezwf0hEqbVvQM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655896680;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C8qj6IQTHdflhnC4glNWUG/ivUtCqmBjyAOCkEGaIus=;
	b=fODJNOK5ggzHqiS70O4X+RqqI9fryFhlUyICiZ4kEVeWSjT0i9WE9bGDQzfl8pvO
	mn6KHeTT424dVSbqzkJ0ohn3vqla8gFkMe7OCnTXEr57X6WhPwb1U1L6meLJjepb8P6
	gdCQ4LZZibYRjbyf5eXvzEl1ASlG/GC32YGUDy3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b22235b-09893d13-4a99-4939-a210-5f2426eb30e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8204d20d13dbd8c2407889de4b99e04d92daa9cecaa4d3d7bffc265cf66c494
Date: Wed, 22 Jun 2022 11:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655896679
