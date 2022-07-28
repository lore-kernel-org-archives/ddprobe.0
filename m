Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596D5EC6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658973052;
	h=To:Subject:From:Message-Id:Date;
	bh=YDxgcPeWAIrVGVRPZk3ac5uEEXRJbkNL/e2XYUEZ+VM=;
	b=RMIZ9toAKvQvmSimEZCo3NRGLlW5QFotTj6gO55lGGHsg3+vvO6hRIw1xVJGLZRV
	6nDKvR5h4SsvJUbeFUj9/uFknahnLky3/hEX2QMZcwYm/dZ6PZ6A2RAbsgGnkGWa6Ek
	AJxVge+PyGIoBuX7uWhdsCiOuUGnRpkz/+KRA9yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658973052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YDxgcPeWAIrVGVRPZk3ac5uEEXRJbkNL/e2XYUEZ+VM=;
	b=U5PdA3k14BspNz380qah564KcUXn8p7xz8V8e9r9iDjZGDp/nyMPZ6g8Y96zSj6J
	YVcDGtA7FLOfk9XU+wtZFC6JZYPTa7nTEIgXMjL9tBTKjMZsEvz77XDhCM0CIGROMH9
	HI/QR98g8sYAErcqvTOUlGkW49I9OHddQ1XECWJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182427fdebd-a5636cf1-c9ba-4e60-9c17-83b6c8e6c891-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd33cf762028fa7aa4307dfe7ec7a62645c24276cf1829e78b283731315b3c2e
Date: Thu, 28 Jul 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658973052
