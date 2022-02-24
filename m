Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4D4185D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645702585;
	h=To:Subject:From:Message-Id:Date;
	bh=shm+glW1fo2R0C8kmzOmZ5buywUy7wiDjq2T2QD/OHg=;
	b=GMzpou7mzAP6FJTIcVBrm6xYijT982vQgeeT5YgZ8MLHu4cNAd8wvmQLFzRsNzPf
	3i2L+TTZxxuXQvgj0QR37ZlbjCjzx9ckq7w42ylHasyN/Wx3caY5M6gLyL+y8COo6lG
	kJqTlwLI8eRocZ5TphdW03WaFOTgcD1z7vj6bV60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645702585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=shm+glW1fo2R0C8kmzOmZ5buywUy7wiDjq2T2QD/OHg=;
	b=iWpk0Z9MJNz8OCLnrY4Iy3R5jXSUU4vBI2A03fa4uV6zs8W8toyN4Eqab+DmZthi
	LxZimh/cobH3rUc4qEzqceAfArRe/eYQWajsrL078M8s+8MkcHFN5sxasWqtjxD9o/g
	0EbdE7VcACqRj72Kg3vbBiUREMuzrShAxsqb7ew4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2b84998a-dffd0f06-b211-4b90-a07c-b7e77d92be3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2dfecc8e64167ad0455e65994dd55b80c00f2db5500d532ee472b2b872c3981
Date: Thu, 24 Feb 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645702584
