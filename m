Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E199C4C61
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658784412;
	h=To:Subject:From:Message-Id:Date;
	bh=Cj+IjgG5l8FIsu/Xho1Wj54g6GaIRQc+BmlIhyv4x8k=;
	b=TylB8DXr4RqJ6BljOtdl0UtY1GTBUhF7D+Fr9k5A9tnpv2HW51yA0wvFBDFj7Cr5
	owxKkNAwtJCjqJdGNGRYs4nROl5+a8evXfdi/vQtd56BBM+6xIqFE0ffz9s5Mnd/p8b
	WhUx6DhqKvZsGhBbEwaIDA9HRDXVV8T8Q/F6PPXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658784412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cj+IjgG5l8FIsu/Xho1Wj54g6GaIRQc+BmlIhyv4x8k=;
	b=MoARHnkSVhFJGhMADekJORR6a6Ddh5K90lXrnwcWb8IHPKqG1Klg6HqOesR+d/0L
	sYMt8JOFclh7yZfy5a5PKsQy29xUYfK8CYdsyYa2K2tsBHTtd47l6K1rRekbCZmOXe6
	j8fCZVDT7ngC141/HEVpo1sYSwndbdQRzQXB3eak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823741725d-2abf0048-74bd-49b4-9670-93ae66ed6d2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f101b4cbdb2eb2adb78fd247935a2c80beb0064ab7167e6e6781f6d5789e2da6
Date: Mon, 25 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658784412
