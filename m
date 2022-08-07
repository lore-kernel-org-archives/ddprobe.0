Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390D17A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659886252;
	h=To:Subject:From:Message-Id:Date;
	bh=d0jJWOzLspZFIpTQAFOFLUL/DNVqwKJK4dUZQ6Xo8b0=;
	b=S4/h8ux05Kjn2EQZ3/gwsRRne0MwTq/BOLwwQOuzhmZuYk2cfr5e7BxO0nr/iAnO
	kOkVix4w0jmlCMWkW9YZN+Vd0rAXFKWF+oKz+A6z4XRo4c4RirX0YBiCItBibRwZ0Kk
	wnRH8NufzoLqw7xoDSbScBb87borGJ1bP6rx9mvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659886252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d0jJWOzLspZFIpTQAFOFLUL/DNVqwKJK4dUZQ6Xo8b0=;
	b=ZHVOnQilMf5EVSw0WuQSAK+fgKx4/qCv0RCcZylae4SpQyowpUJjIocXndiP1hsR
	LMo7TGx3X7kCM1XIMKgXsxfZjK/EnCNkeuxaFHB/TtRxTHeUe4TpbLPqgPIT++NdA8q
	1AevlgKooX02KkbKnYpKc4/RYKA949tCW5yOeXfs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018278ee31eb-c4e999c4-388d-4ca0-818d-530fd0eb60fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d7af3ba36ca3cc24a1e51db536d3e71127e42a3dee8c61ad6eb6c21c3494eaf
Date: Sun, 7 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659886252
