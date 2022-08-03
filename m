Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557193211
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659556852;
	h=To:Subject:From:Message-Id:Date;
	bh=+65n/cPjK1AF2KQFqhRtf4udiwaEn2U69imVXOj3eDI=;
	b=NjPmnfgxYhvCzPkjCKs6ubN9d1x9oSti6glthpQF9ccacca2PXcLuOJfnjiNhCej
	lYChijdV1AItGOqCuaFgapVEDzDw9H7h3bBQJRlgugTRlntxeXWX5v8Zc7q6tTQKBar
	2TAlittkQiskZXNfOIVbkoI1Syo1XjBLHjQiXwME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659556852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+65n/cPjK1AF2KQFqhRtf4udiwaEn2U69imVXOj3eDI=;
	b=Xw/5k2NPABgWoM5L+D5T60SR4xzS0/4o6TenRtUJXcVawmmW8mvPwVvvWJCnPrAl
	l7pMzZ6gFOkkjY/6CRKK4Jj10omnBOQh/jrZK4eCkRFMZSFeyqpZjK95P+tAiTP2PsO
	lS/ORqyaElr/dqQxR5kvEHVheg5HNiIoGejb2DnI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182654bf37e-54445d9f-ca52-4823-8d79-a9a9e8a063fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cb50a087f2d04927ad25ae520af9d96bd13409b697cb16ba79268e1f2f11d91
Date: Wed, 3 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659556852
