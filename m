Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2657E7F
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 10:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652004358;
	h=To:Subject:From:Message-Id:Date;
	bh=njP4GzKeWbdQZdBBvkZSZxJ3urkrysqaJqfHUJMozUw=;
	b=eYFYzYJreO4EOtLs0pfoWitSFizSHGI8xHV0gq4i64CSD8TxrxXqrwJjDL6tI0hw
	uTCQ5VQ8cGQIpCbCs3j/FzC+g6qpkhLkBULaEHgXihLyJ4LPU1jejnxQyQo9bLDCsvy
	9HisRtNSQdeJQmutDkJhJq7laml4tTvwTlSeLX4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652004358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=njP4GzKeWbdQZdBBvkZSZxJ3urkrysqaJqfHUJMozUw=;
	b=TtnKCHg8BFzT5zjF2SJTvakRGZZRuTyorb5xObfmt77MMeZEpy/TAKfiI6fFfYHQ
	6cvwXNw7sjYJxU+5tx6osldXVml3WJ0bMP6u8ZrjaO0Nn5mmejVI4oStEt5r+Saw6WP
	y3IXa/i3R48WyTp4rF0LfMxYa5jZClahzhCQmBp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a32208a0-c407350c-3f84-43c8-a40d-509684e26224-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebdd8d6f1c8a337b0480bace6c152a15e8014643dc2eab3309e347d86aefe2d4
Date: Sun, 8 May 2022 10:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652004358
