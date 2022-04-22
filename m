Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1272A290F
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 16:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650645778;
	h=To:Subject:From:Message-Id:Date;
	bh=SlPBqo7WQRnZKK66eyCNQe4AC9Q6IpRDHpgnSip7msE=;
	b=eX3OwOUbb94sN3XLoV9DPUhG9c8+ukeLHYr2de9vI/gV5G3h/L4KaPgbIrMmKJ8h
	21NuvKquE+vHwQvXPAYHmgahaGV+xOuQ4Q1iN6x/OwNZgrU17+RDAJDkvqArmA4jIb6
	AyeOV91s07uE01SF3JGqS2MbaI4giM+oOv5A4cBA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650645778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SlPBqo7WQRnZKK66eyCNQe4AC9Q6IpRDHpgnSip7msE=;
	b=QGgnJYsyYAnrj6WoaaNyt6kRAeH4IsJb8ToCnOoX6NVahl7AbX5g7sa8h4jAKZ2S
	G/gwvCZGRnxuZrNZEHN5/B3yAPQDVpyZKHQJ8nAxx5jym3Yb2S3E/2J6g948kopr42/
	wJYia3INWtXTm+8VgUc7PvfTWp9o7KgLH27JmSZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805227bf47-98e3652f-ce47-4d59-80a4-0cca3ac2dbd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e835160d5fd0dcac44f9d2e9020bdc7c254f0db95879891296cacd4a52016695
Date: Fri, 22 Apr 2022 16:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650645778
