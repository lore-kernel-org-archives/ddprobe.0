Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90FE94F3B
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645233684;
	h=To:Subject:From:Message-Id:Date;
	bh=ySs0XUBzHVDv1XJPn0JpZg5HOZdujZuOUP0+I0f8bfQ=;
	b=SL5wBrTnppC36vQGx+YNkLXNi0qmnCR6rvUu7krXs7l6suawuUKfFP3/e2okq99c
	6eSYyzGSRTAaJB9j9RO1EJ0Lx8vNkfu2a5zbydl2bjv2Am6WRmBn8xHm9iGYCR4uUV3
	4a/SzhJR7blVKm+KnKfv37ybZQz4KR2l7kBNz7m4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645233684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ySs0XUBzHVDv1XJPn0JpZg5HOZdujZuOUP0+I0f8bfQ=;
	b=FPy7DR38kWHKw8oqrQiiXJ3JANRYQNxszwcp1B6oN2BoKLy5c4bw8b1QGBDk5ItU
	4/L0Ljn/3+BXtRDsmGYyJmoYJP7n/gAQYYlyYBGSJs7L5eTVHMcUmWmJBE1tKXIn+RI
	aMs83067i7mKhAkZiL0GYrMsyUfQp8LZwb54luog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f91c141-70ac3f00-8276-447d-a0a0-0d2e596c42e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdf2e55fdf5ff26f9bfff97be5c36f27b2f023aa4c8901c766f53c099c4f1d32
Date: Sat, 19 Feb 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645233684
