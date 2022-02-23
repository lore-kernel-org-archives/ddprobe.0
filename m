Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A97437EC
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645585584;
	h=To:Subject:From:Message-Id:Date;
	bh=WhR46X6VWoL+hXgqpqGuxm2p+A2GOo2Xh8NmC2v5P4o=;
	b=Nifosx1hXYq5Dob8lQhUwYvXRh8Y3U6hQwCxavU0VEjM98B8aixdgUphSFDeM1da
	LbYJuzSAzJa2X5a1jJe2JlASj7OydRYDs9H2auvOqKZa5C08kRMVsgWa+IoMpRgfhHk
	edUduoHVdDgq/4SzkBwKVZuFTGVnklvWdJetmGQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645585584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WhR46X6VWoL+hXgqpqGuxm2p+A2GOo2Xh8NmC2v5P4o=;
	b=d4fOKZq4hIIUFJoLWGEn46vQiyDrSo7qUgnnxZByz32+ZQaWI6n98qYs+qnWaCF+
	9rssnqbaKema5UJnrWKSP2mXlz7pKJK5WgMxr3sVd1wRc308n7dxJ/ST3DTk1PXZNfM
	VesfmgrisOrUqDJ4M8N4cZAL6/w5WVBuN3UcWT3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f248b528c-4c29ad8f-1d78-4cd6-8341-e00ce38f1d57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8a3290c8ea5f25789a3c401dd2f8cd8b5c69d947a8b971cab7c670342d73b19
Date: Wed, 23 Feb 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645585584
