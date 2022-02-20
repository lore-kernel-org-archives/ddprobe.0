Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD7C181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645322485;
	h=To:Subject:From:Message-Id:Date;
	bh=AoZcoLOPGPG7mAynzzZCOoRGFqD7k1QuMXIfueRinl0=;
	b=HnPHDdr2aT0VqHRrmfCzOUti7GL94tuoP2JO9aZT3/smp5ryQC5vDr8z+ZRXo6Oa
	wCZm2H9yAuR7O3ELbG9s+dSp/xAakQ/HpcCeemJLT67tkdMFaVG/XPg2OuafFFNJHWo
	AGEwA4OfDX37NbSSgzn0LtOJoWkDtcl+kGynT0RE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645322485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AoZcoLOPGPG7mAynzzZCOoRGFqD7k1QuMXIfueRinl0=;
	b=NR00l4g+YcWERiWBWOphUXDCexwEO1DIpNroxw44M/CpWucM7q6pLsMNbFOKgyci
	Dc9l5SnQrL0aIUZCXrNxZq2qeexyc4ME8s8ITeN//6qXvrsfdrX0gu7EC89lzcs8xs4
	bV5RenwuCS4G0ZEGn+RVCQHNNE0FSBCVzr2jCENA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f14dcbc59-baa0ca9d-b8ac-4795-b380-53b55f562709-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcad568ba48cfb7cd5289695225450753a5a1ee84a58cc57c2bfb9500da0585d
Date: Sun, 20 Feb 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645322484
