Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA68EA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657400212;
	h=To:Subject:From:Message-Id:Date;
	bh=JJwmxt2AdtJVELHKs031lqV242QWke7m6zv1j8I3pwo=;
	b=Bw94JnipUw0xKNlPEQDcOMiAZyY+bFdXyFpWrjmZ1evbbPRNSX2bPut76rSDVzHv
	eHUvr0gyl/hC+TwKL3lly4TuLg9mke5IyLmeAFlvsAfuw7uQfN4R332ju36WENbX0Je
	obAjKbS7cRvRlMzmezin3LwJpSIL2jf44d9mqGhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657400212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JJwmxt2AdtJVELHKs031lqV242QWke7m6zv1j8I3pwo=;
	b=ct9+vbDhuOoEgLnjngmF+iJ+P5E4rjef96gjR/EME9MkwdShIlJn91afa2d0M/dw
	FGTNkmldw1cab6OZ9E8namTwgKm0xI/CPJa6HaiX0FzpmvqadVQqr0oLuHCdViRvPAf
	zR6wIK4Rvz9K1oT/dwWzhjNDObvfHHkQqWHoSjKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e4c03b6c-ab233a68-82f8-44b2-ab80-7c2dcba98116-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec142aa2f58b32bd902aa0dd3af421bfb8412587656ba26f857fc1b55065c282
Date: Sat, 9 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657400212
