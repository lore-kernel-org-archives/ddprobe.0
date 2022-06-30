Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C0CEBB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656584812;
	h=To:Subject:From:Message-Id:Date;
	bh=iBicr/D4zEWXMhMEEJjr4fTVY43DbTJRUyX0BeQTxDo=;
	b=PnELUepFzPXWVay74LLz7PZTrKUb/2VP3JHTw8S3qoXNHiMl+L6ytbEV89mbavKG
	D0K9U39ScjiNScaY1zfMgwApTr5goDkdMAyM9kUNsddJno0BeKDeL9JQDWFKm2BSLdg
	B4lbv+rKfKK/WTnuORaCfZS+NJCuKAR5XTDawsaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656584812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iBicr/D4zEWXMhMEEJjr4fTVY43DbTJRUyX0BeQTxDo=;
	b=iw4QA0px5JGCoUp0JARUUJDfuybWmF4OfwjJPWnhFCkLC58KeXNqCd5xnayVFAcn
	kJqC8LzVcePm8i3gxb8y+LlwNWXs71wYPbG0Y3K28kmGC2ZmUwoLXag44bGhdK7epr3
	ivb1pJHAlpaWinqMPQX19eX0Anl33MSCARykmfD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b42636f8-18ae0dbc-8e03-4a0e-9938-706f7e74cb9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e75db81c34e38b735b701a1c90c3a44786d56c82a5df8645fff62ebaafa567ba
Date: Thu, 30 Jun 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656584812
