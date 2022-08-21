Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD76936A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661044253;
	h=To:Subject:From:Message-Id:Date;
	bh=SARVjY7NUyAgPUGyYZm2FS6PoEJS7WVbnzd7/CuvNlI=;
	b=YQRvPJcMeDc7HtlgjO0L+ApBcFNzNIqq8xewaVWYQrtlQihfOLdKqlXDsv5UO5rk
	76VO4zQHr5j1evdIE8ubcUfe3ujKaFk3e+V0vgTZF5yCh+WmYVjMfWIsCZgSXppa11J
	MJLZgAnQuLjIpGlNZA6fc0Inc9981kUJICqt+aFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661044253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SARVjY7NUyAgPUGyYZm2FS6PoEJS7WVbnzd7/CuvNlI=;
	b=V3OSrySrgqyCFAyF3TCbNz469OijNyz7vomUDMe9LVGjIidx936MPU9Hp8t9P3gX
	yoBkK4/jUDVR0isBuHJRKo38R9PYjv/ySixAGzVFw1DcbmPfZLGzn8p66wU8ZVWXR+X
	slz8WGKZzMQ/UtSnJ335TvW3c8x7eExg15hX2m64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bdf3dfbe-94bad05a-e97d-48f0-8ad2-bc54589b1632-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8df4ad015b1a3446bcc8054457355d107782f38c4ebdab02720ed21c471c71f
Date: Sun, 21 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661044252
