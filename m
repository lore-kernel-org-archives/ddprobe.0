Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0931363B
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658750812;
	h=To:Subject:From:Message-Id:Date;
	bh=NpowF3FS7WM5nqZ8tyU5myjbOst8SxN2HOPlyE/Tiqw=;
	b=M3GPsPjEW/6hs4q6ww/Lw6SLb1bqevOTuGD0qekMgxAfL1EpmG7zqu5YyxWTWyVN
	jt5KBHgK7X5JgGTB3OFfLe6s7GqorHY2JmGU3ZXSqbEVlHmpIwF99z8gmD/WT6Rqg2+
	CGRii0N1V70M7Nk542ukdRx02MQhnr6C0DXapNnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658750812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NpowF3FS7WM5nqZ8tyU5myjbOst8SxN2HOPlyE/Tiqw=;
	b=LURq6ISMUkQfzoMoxCd1FbT15mYh0V9YXwny56HoN/UM1oY2I27k4kdDqfl02Fal
	AOGZKQsjrvDIYi54EP2p2QvRFvrD6o6r9/7DUH2ZmpshNzHFww2XukW5qAVYRGtGRc+
	qZU2l+NvncMe2bxnHN5wHc31eVcqtv1nIs1GvSTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823540c094-a5a1c2ba-0d53-4c08-858b-fcd1d71f56f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d4def377903d9f4e9bf0af82a5c88f1d9ba9af8cb9ac6e663234bfac08262f2
Date: Mon, 25 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658750812
