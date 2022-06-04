Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175637E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 13:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654348079;
	h=To:Subject:From:Message-Id:Date;
	bh=sowCMSqfdKag4yMJhb32q55fdsbivyRQcADC1sLVnz8=;
	b=bSB0yoJHLVmYOZfjZmQCHVAx50VG+wY52r5hWkkmJa3xWU1BNMeQlQ1IkwNXKd49
	94AZSyFpbtdrpQPgseGtDxzPRAM7XHRh0gdxLO9kgLBdtvwjIWWVlGbQBi6tBCg/p0+
	K4JqBe5dwVS9bhSdqiRrafx7EfCtX016yZrLQXU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654348079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sowCMSqfdKag4yMJhb32q55fdsbivyRQcADC1sLVnz8=;
	b=L1YJdJ+FsdT91L/jv60kszDd9sQltAkNldZOwAZri89Ay9ldfjCTa141rvwZZEji
	9oScSZrZHnSBLN/GNpMLullhLqeYvlo7f485n4woSBk1/gA2gd/uLgeSSRF98Kdht0P
	qlbjeEItXpt5TQVgZEeJkTTSEMK28uh7XAfo7gkk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812ed4607d-f58edaa7-0807-40d4-ba2f-d6cfa606e48a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae14a357b6ca683606d70dff2a25760ea3e24b6b156771803562e680272dafbd
Date: Sat, 4 Jun 2022 13:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654348079
