Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554B4191
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 02:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657766212;
	h=To:Subject:From:Message-Id:Date;
	bh=+YWqmznPQbTMWUQuRW8iJXeckC4AYVOTgCMgpVgIH9c=;
	b=HC2tmoHILbI0z0KSpede/UZPLfVYW1JuB7s9zBgKZZZJp2uNvlbGNHkpygRS4asU
	+8XWEJT0rEIgQBFrXX38v/+wC+tRcqL0MSH4ZGxvnwLAzYa90YwwlH91EmMhH0iElNk
	ncjKOKHe7+dnh0pd7GZYCPib3X8G8Uq10uf4SsD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657766212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+YWqmznPQbTMWUQuRW8iJXeckC4AYVOTgCMgpVgIH9c=;
	b=cEciePcfb9Ewx4LB+3Cc/cHlj2sUOGaH5f2h4VqZ27d+7L3UJiM121ey9Npdi3Gx
	3GaaF09S5tDtHzqMK75DHIpKZoLMEvf3khY01ydFc23AYUe/L2SvYX4zO3l8aXPfPgx
	w/ZjdroY3lalVoXP5rKveeHQXziZdc6DE88DxuDA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fa90f30f-8c07bbfc-e022-46c3-bb5e-075f27dc7f2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b8576215192ddaa6baa1fb8b2cb04e5432817c8d5a4b0056369c8af0413e76d
Date: Thu, 14 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657766212
