Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4901615A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659248452;
	h=To:Subject:From:Message-Id:Date;
	bh=BGy7599ns/Q7YsWFjde4Hcfs5vqvZ5JgeY8vk9IvmaQ=;
	b=C+gSO86ZQl2uvzOjwcqoX+YBCU8GFW+4UsFBc3TmCMWHzRavHSFf58sMmID8KfxS
	TuAPfB6jDl+swA9hErgmH/Fk0FQHEGZZGmfBzFLd1jZ48vUbl7ezxpVUvpI5DbpJrDA
	jX8NmajHkr7zVOLtxdkD4/QOWdIYSKV923RU9NVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659248452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BGy7599ns/Q7YsWFjde4Hcfs5vqvZ5JgeY8vk9IvmaQ=;
	b=OwUNJvARHsPVWGIacXNjps+QMhaVyIIw6jEITxCBXroi9v215OlKGmgSgu3INW+6
	9x8yaDOvW1f1YsaBjxHN0BbDAoXuC8Oy//1cvM7tfgspJ92T7zXhI8PP2xfNsVho07p
	phubxPwAshj9NKJxeGPRkyPOU+a2358I8/w0B1Qw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018252ea23ab-21aa758d-2c3f-4317-a1d0-9fb785da29ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f26b8183dcaf2396b20cb041a86ca7f73a97bf663d66b6bfe585c569ecf141d9
Date: Sun, 31 Jul 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659248452
