Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F70EA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659745852;
	h=To:Subject:From:Message-Id:Date;
	bh=doBqqIEaTmxltb8jWcI/RgJDhJYXSKgksr1nqjinvV8=;
	b=BQqnEOMzeEIFrA5i0VGz5Xlw7rT47eDNlIOzTvF8PxnO8mEqqmGZiBEXK5Q+KQgs
	0gZ2Wb6ChKns96YoV0ubxT0F1wEXxPXIQn5uX5w8N/xH5XiiF+RVO6M9AIU4IXN7c6+
	kQPcaY+iGbBlvRwguOApzrjWTUJhc1OnrmwGBuoU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659745852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=doBqqIEaTmxltb8jWcI/RgJDhJYXSKgksr1nqjinvV8=;
	b=V/mYEgMvZXNNmCUk6iDXduv6ODrcVYbEiCxwnuH3zUwQljmfom0mWpXdyrlQCI7X
	bguigRq0K6DMYn0YGUcSjW4lOmDclHjBJhKuS7fVns9w+nrfSfYfIDjjyN95wph4/oS
	29wRIq7B9yrp5NFryeY36fYoU1pqqYiqQi+CAkDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182708fdcf3-35ffd41f-26c9-48ae-a4e6-a3e2f751dd2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7cece0bff0e41597c7978f694df7f0875fb47db8f10377566dd11098276d71f
Date: Sat, 6 Aug 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659745852
