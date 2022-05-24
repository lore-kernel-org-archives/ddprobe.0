Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DBE7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 10:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653389159;
	h=To:Subject:From:Message-Id:Date;
	bh=vbd9LQIZh+NZY3Vhhv6mb5g7N49lB4aegun9Bmniono=;
	b=fWq3wPm0I4MY6syRdewW3tx5uPaNMXV8dkDe3lcS2xFlm8l2fXzSMyJQ6Es5MRVK
	SwfuyBNQrKR0o5DoDOdQFParFv+C8Fu0P8M6bbpe8bt7WoHKTiudjOYYKaxVn2Sax0B
	ARW6YXR7oX4HjApB7USjomRKV82xnAsvnvVA/UdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653389159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vbd9LQIZh+NZY3Vhhv6mb5g7N49lB4aegun9Bmniono=;
	b=SElYNdUP7WP3WOxVRgzBhoyJLVzgoZ0Jpsi0ApR0IekvaKKL3SI60zwEHGBHk2S/
	QKb14ZFqpHvTh1ACdcJ+IBmDg0CeKoLOIMT/vOOgO0MaryUxluug+3qxhPESLKZK0WA
	UaaNSMWqQ13FnCMDP1ErmlVVaPVK4KOUE3USxhLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5ac6b70-405d6a41-719a-4981-bbac-c64e9042fad3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f02ef4d915a2d93eb31c3e89470ee39dc73107ab53c79fe436d37984f3bc3c06
Date: Tue, 24 May 2022 10:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653389159
