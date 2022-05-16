Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198A01376
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 19:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652727839;
	h=To:Subject:From:Message-Id:Date;
	bh=wqwatIXlOCCJ7RS89QlfDuLm7VVs4sQQyFUehCQiH3A=;
	b=aLmUntuocD+jtssz+SJVLCvXV7AghGC9GmDhCj2823fbozica5HUrGz1qU0EZbuw
	s8tuGU/ZOJl0gPknGDdPhkoPpyYgKwmDNLCkOT8D9vRGQ+NqfOB1NVVRAx0C+4B9Ms2
	OtQHbPo59x3xF+nB9JQW+Qx95X8OK35ZnwHWrCBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652727839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wqwatIXlOCCJ7RS89QlfDuLm7VVs4sQQyFUehCQiH3A=;
	b=LZYyi7v0FKI4Skwh5mAwAxapA02i8Jl2Tzn9M+pZeCdQnMO5jjwuf2PDXKUFNWqv
	P3lHBsjQMUTOIV0r2wUnMzoAi3GgbslXpupgUFi3IPr3rtlRP1QWLbdGqBaAQs2eKxw
	lW0bgBCktq51draoANsCh5TNyTApxqwzX8WWTtCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ce417a47-dabcc6a3-cc22-42b6-bc43-90c335fb59dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0b5e751879bc1287cd429694e8bd4ae179f898e05f11da6472e332ae1f6e868
Date: Mon, 16 May 2022 19:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652727839
