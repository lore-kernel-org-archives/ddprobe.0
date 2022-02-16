Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454B21844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644975684;
	h=To:Subject:From:Message-Id:Date;
	bh=g63B2EUFEHyaRNvRs++d5aL5d/wFVcHEwUFjP/q0paA=;
	b=ZkIpw0dy/5zOsyfS8Qe9eOLQFlU7q/JBBeWPWfus/znpuWqSHbU3rb5/9KBRuy7N
	asDO8yX7+njQRZAlNE5VTFgddShid0bxm6q6LQyY8qmWXSJsTEJBnCRHUJFXvgtWSx4
	bSKcxr7U4zOAVAY9Z9eKXYEXmL8qXgI4qoY1dT1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644975684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g63B2EUFEHyaRNvRs++d5aL5d/wFVcHEwUFjP/q0paA=;
	b=V1y7FoNfrnziAPu3QrzHhsfy4fAjHYw3zEo6NHt81WTHSZ+dcX8bMr5S8IhVhnYZ
	VMjmAukfQ+qJuZ+nR0NNGF/k33O0VvWuM6zuXJ9Wyf3/hj4JXWtLGt1ljdo8/+Q1ap1
	ndAJN+FXSP1lpOC4EM5Zw4eTpN30ivNrenDiFoKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0030fc83-a9077125-ea41-4ef7-b5b0-265d235731a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bb06a0b8c156c8f8428fce16bdc75bfbd97cbeee35c04a89d88a5f8760d4bca
Date: Wed, 16 Feb 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644975684
