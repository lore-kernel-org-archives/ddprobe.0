Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088FC28EA
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658396212;
	h=To:Subject:From:Message-Id:Date;
	bh=8bC20tm8aW1ZGwshqVmvSmFugbDZFU6q2jzCDhxaRXY=;
	b=J6MVZyU/CHiDfa1ehldiinqh1+VP7QrtFQM38qN3k5txVVyF4hNaPdFQ7F+OFHqk
	X449tn3Z77RL9j5+w+//sk1Bm3/zX6ZKPHl6Q0w46cOHoOWZBpC9/+soKCtnkh/SxV5
	Q4eQhTMQv1iZe2Hzubt24V1kP6skbpxmKcPlFevo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658396212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8bC20tm8aW1ZGwshqVmvSmFugbDZFU6q2jzCDhxaRXY=;
	b=iERHSUKv9SZSHWNcOEVwOywK7CNHkVH1/YlrIaYPvto2W7kCET53mK9v+VvXhJKW
	snKuLp3teFuH98343innU+2rUpQ9jKKLxCoFNin4j/F5wQ0ddy+af63LN9pIftj7BRz
	Di39eAmDdiFOCdi7ScFVzVyfGkbKLu1XZjvjMNGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182201dfc2a-3d96cd0e-95a3-435e-a6f6-be5e877e1f22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 346e03bff339f33629a78a1fc3f16b071517c679c6190f85af4591c2d3f9d310
Date: Thu, 21 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658396212
