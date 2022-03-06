Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22487C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646550385;
	h=To:Subject:From:Message-Id:Date;
	bh=0g03DwmQ7YY1iEDOFX6AFYcGxxSrveeDuI6PBMPKR7Q=;
	b=NpUMpAxI2ffDDrmNQERrlfLzEKPITM6su4N2a+mDR52Mvamv1b2QwFiYrW8SsYyg
	Emp1zDR6XpPjKFw9mp3FJqxBFKRazaSX7LQwlz5OvadFVs/5FoFp1Y9m8pFlxMF4mrS
	tlxFN5CbGhIsPWmiNG0qI/s/JvJRnIplZwWk3N6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646550385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0g03DwmQ7YY1iEDOFX6AFYcGxxSrveeDuI6PBMPKR7Q=;
	b=ftqM5tfl5Myuh8IRkVa1LS84SPleiDNES30fT7NXOLF1o4QisY0Lo/nfuRviBSWH
	erPqo+nt9gKL3CGj+hbitavLRLW5rtftKdbjMtA1YOVh/zRMvUs6kkfHpUOa5m7Lzqk
	YBmmsuWovHn9vbFGLBPwSEcCSAnkjdhwwXh+Ju7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e0d0126-50547dd2-bfc5-47ee-9dae-3bae27cb28ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d7f6eee15fff6fe5b959b7003327e38f39440ecb7eae4e3a460a92fc5fa9f45
Date: Sun, 6 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646550384
