Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27721364
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 10:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655117879;
	h=To:Subject:From:Message-Id:Date;
	bh=mZmjaLm/Qb7TQZAy0MozSRrLH0MhK0GEyHrDHM/dgPg=;
	b=Q3k9iz3v2xsBCcEIO6s30d+xKSDXG+4uq5U+5EIVMxqKIZXwmCt/cGtjgcUPDn2+
	iHyTcBZYiIYrb5VWotjR0HS8vq2qJtGxZ4FjmXBe6ZTEVPU7RPbWjIvkLXtemznQbaI
	4cmzDqsWGeAGhnYQLKZ1A5j1iB8CAl6jU5nZwvV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655117879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mZmjaLm/Qb7TQZAy0MozSRrLH0MhK0GEyHrDHM/dgPg=;
	b=TQ5ljX90Ou7sOFIr015jFBvjnB2sr//2afn4J/YtAJUWD9vubWATPHjj2N9ekw9s
	qFnZGmAIHYpdyzb3Ulgpfab+A9LzZH5biNbp+D32nLWxLmM0eeOxTl4EAz8LUuoR312
	wzk0A0dD6nEfQJVnH6CBibT+2/0nReOZmfD0h+vk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815cb697c2-cdc16ae6-87f5-467f-ba5c-0460c1347c73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a65260e88b69630af61882e7f07542400ec1ff04cb5fc69106c78da96edffc72
Date: Mon, 13 Jun 2022 10:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655117879
