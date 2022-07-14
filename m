Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411EC17C2
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657769812;
	h=To:Subject:From:Message-Id:Date;
	bh=3PCIqhl/GYbCgsr5+t1c9k6qQm2qDcda41oufa2Rvwg=;
	b=jeMPYhPY/BKm2V6GZL9kb8m1rwngaC4Qc3YtJqcubOwBBNxbdoa2vJQsaDSQqyCT
	i6Lg7O1iWdEnreYrzLcS9Qn/YellXFhMK/QVuY2G0l0YhxzsT8Zb60pXMJ0WYvGpKFH
	xYn5GnWMMUa55MkDK0OSUqgRGPqDQ78OK2BgSY3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657769812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3PCIqhl/GYbCgsr5+t1c9k6qQm2qDcda41oufa2Rvwg=;
	b=EHUJRl1r0i6xsSvy7CDuDnmvz1Y1hs8gY2TRmf5ELHNQ4VSmzKfPjck+pf696qpD
	6lWGCvx320H5mw5f8uqkXnC1u21Xm9C1Vttc/bVl7z/XwTt3TjlRO+j6Z0Yekdhfax/
	bL0q2Qgme6idolA7cLfqVqORKR/1kfH+iKs0W9iY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fac7e17c-14d9b162-c6df-4e0b-94de-8ea783ef2d23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee9c568c0f850c4bc4f494c173aab89a1f0f88f8e72f71e1ae54647978181534
Date: Thu, 14 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657769812
