Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B332104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 03:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646191884;
	h=To:Subject:From:Message-Id:Date;
	bh=XqC92vFkxpZ9CgBTvmXmGDXdAjtZ4H7AFJKoqr5tPxM=;
	b=PEFDJfDIpEQOdAK6a7ZXgAm+zLaB0z99LhRKi2NceCCrKUQv49+lrJlHGH88eDk4
	TLKsnGhGB3DH5cmSCd6M1a4P7gH9FeP+dSYwiLJMA84kgtM64bkVyXt4ROrViBuzngP
	lDDRZPK2T9TbrALFES/vPjrKkglQui304q8Rdlcc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646191884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XqC92vFkxpZ9CgBTvmXmGDXdAjtZ4H7AFJKoqr5tPxM=;
	b=X8ieSHIzV6+zQYtZrRIexijpdnPVVNMdaZ+QktkTyeWc/zeL1C0fn1psoNotsT+m
	51KbjuUImXHl6PbIKL1OSKjLkHL5ceFTIwPx0ZIbCsjcG9AtiysW3rXKSAqo8w5z8sV
	yOcrojmFM8I+VOH5QMbleOtjUZ+wcvVuzmOVLE2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f48aeb9f6-427e13fe-be06-4fdf-8cee-52e80f34f810-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f0cbc0de689e752cd02cc2f84451d901b45fa261292041ce6c2b3b88bd5a707
Date: Wed, 2 Mar 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646191884
