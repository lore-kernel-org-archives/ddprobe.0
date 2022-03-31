Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F68E7C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 19:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648754878;
	h=To:Subject:From:Message-Id:Date;
	bh=tnPmdXJ+JZ8/wYaCm08cnMsnDGKl858AGdueVcvqoZw=;
	b=d1AU0oCmz/HYAcZPfhW7nIMWsfSexHBylqPuXZF9OWy5cd2JJoflbCVwQeTp6DPr
	5YvuEZrV/G0p8H6LZXniulijMrngXuZOI/DIiUzSPQuadzPdSvb7Gy33PXgbS+0v9YP
	PyPJemhUKTeN9J79WTDOJsSv7aelXetPtvSLDjyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648754878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tnPmdXJ+JZ8/wYaCm08cnMsnDGKl858AGdueVcvqoZw=;
	b=CfkggMs/yoE9JicB99/aD9PLLgvM3mS6opPekfIdhdH9+vfq3TlEq8mbYpQMGiuS
	vKmsBAKIsztddA4IqhjDisw9+FvRxkWt11qOQkdTjFWx3q/GkYSDIrEuoYrFM1u48JM
	4xZolwME4qHT+WTjgmm38DONg95KwZLPMRwTrXW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe172e74b-e838d12a-8a74-4ad5-bd4c-7bb312999aaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c289afb127c64d2d858770fca9899a2fa9a63911e738d14412356d85008a38f8
Date: Thu, 31 Mar 2022 19:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648754878
