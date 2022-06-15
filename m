Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDED87C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 08:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655280359;
	h=To:Subject:From:Message-Id:Date;
	bh=m/F8B8+x8bN/TBdGAtCM27vtWv+gLMyVLZsZ7AUmSUg=;
	b=GStfOUUxL/CgUjpbqFFJbvj3rA2+RVDAFIRwlHpd0sxKC7kIHpYsFbWgxLqAMFcY
	zno2dJLhzSptvsmlNEOF2VT9RBEuPdLwWAmaKyssxM5AFE5eg3o7JeLhQFYpDJ7l/NA
	qgTZFO5LqxWMHD3hh0LMQwnxggNVf4YlrUoZrXvU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655280359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m/F8B8+x8bN/TBdGAtCM27vtWv+gLMyVLZsZ7AUmSUg=;
	b=UK7h831W8wYGpLCsUWKqGSU1x1y00IGs3v/Mv+Y01phgmzsaax7Y+4sFMi7pi3Wn
	M9PnxK7jPnZTKFEPmWYGHpZZBAdFneyqdAUmflU9WXEOGcwfTusrSmmvNlgeZaVkDp4
	Fh4FdyDniq6sRtCDkdLU2XXT/OUnRU6PqT8YLyxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816665d762-623b7320-7480-4123-a14a-9912ccaff031-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c385dd5fa6fe547ca48be17bb3e711411a87a787612df8df9d530fda7a7f01af
Date: Wed, 15 Jun 2022 08:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655280359
