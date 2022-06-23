Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B161864
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 07:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655970719;
	h=To:Subject:From:Message-Id:Date;
	bh=F0QR0AfjXUH788yf6MjPUVopbz4XxhllvUE37hoAAsw=;
	b=CapuKUNYT25+jMZpkqByvCOti7yav0LjkF4fD0jue0Jpkp0b9UOCK6ePhnWmD3TC
	Hil5xvGpRfh6IfVU/u5yqc3jZfFlJxVuJIcm9R+CnONQ7d3U851i897W46ipt50sl7m
	23a0Vgf0Voyu90afJnxgCrXCOXPhVsTK4zzHRzHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655970719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F0QR0AfjXUH788yf6MjPUVopbz4XxhllvUE37hoAAsw=;
	b=AX7QgBjpyifNkOZWxqyVl/X6T9jMdd63vz8rzBsJYUrWTWFG3ksRGBfj1ca3Is33
	3YuI/dK6Pe1K2KMORiyJHjGZdjm/xRxy8iFTehtnHk8Y7YHBu68CCqFEnhFIvpIz3rW
	BvtIMsD6r5TXVbh2stU132a8zf+AuOyBdupktPQI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f8be603-25631199-5365-447c-9a26-cfac57a73cd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ae620b2c53e4fe93f9a43eef444fc587dcce249904babda0f6a91e1de9b1370
Date: Thu, 23 Jun 2022 07:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655970719
