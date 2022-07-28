Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5996310E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658980252;
	h=To:Subject:From:Message-Id:Date;
	bh=OO4h8ZjK+KKTvwzndfCzN1bITEGNbo5jlTUxVpdlbqo=;
	b=Ibs+3VC9uFWDHYo+t6ZsxOAdu9i03e7DYWYaQqCqpapK08oJe8QCR6PEL2ZqktHZ
	KWzCoK5AwjtCmyRWosM9YCOsws3FS8oLMyhQ7Rp7GicDkIqpHKq/xGXLvcfcSdwYkDz
	9eGTVcrnfZOtfPn0PyYoMhmUfQQASvWMdr4OcKrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658980252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OO4h8ZjK+KKTvwzndfCzN1bITEGNbo5jlTUxVpdlbqo=;
	b=EMZwc0t6N+AHaXDtHMFm31hSTOs4rQTrBkPxcKEiwii6FtdQCK6a1Z+yL/a70IuR
	mDjH/Gt9R8prpos63Lvz0Ef4UqJAtWgyYVMY5ZJyRiwPNIIPgN4b5tJ9Yk0q7JAkL+J
	uMU3gPzinl90Q0zeUFMsZ2f64nuKERzErzHshAw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242edbb85-8d948b82-d35c-4b6b-b397-8272f8a87390-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aed0ccab6dc577f43bf1ee952e64c02aa06af3ccd7b0995dbc7940b2f2f98d0
Date: Thu, 28 Jul 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658980252
