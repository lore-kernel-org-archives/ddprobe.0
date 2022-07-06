Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266B6210D
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657093012;
	h=To:Subject:From:Message-Id:Date;
	bh=Y2673S4QohGD+ZCwhHdpPWP1UuXaTSUEKm4U9Dt9JHI=;
	b=Ba8wQ3mFh5KBehfKmERz0CB6Cr5zd1ZZM6snddJShllyg5Z8uoSF7zymY2GhJCCb
	K5umNhWtm/vLGikhiGf3xGesHntU9I42q7rkG01J9dThV+I7k8Y5Wg/AEZDobMU41mj
	rxHqB43UY5WI+L5Gzr1WZuqno+CaOqTeI4usto+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657093012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y2673S4QohGD+ZCwhHdpPWP1UuXaTSUEKm4U9Dt9JHI=;
	b=Opwu5Oxj19wKo7xyOr8X+S1oudcw8QstspIpWKH8omf+Op7H+NPUCRvVU4yGg2t/
	vr+qvLy7oPlqev3TcW5EB+KpYHHlckkBpf2noGUvtxFAMwzCjyi6ahX54tva0tUS/27
	Pa7XPgP/9fEFj8kmP2QIu/qrwyV6hI7liPuMQ45U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d270bb5f-089e1b14-5102-40a6-bb50-3a0ebeb53f7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1c06238015507cb9a7b2c7b09433d032f809a31a26d13a671e9753738272673
Date: Wed, 6 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657093012
