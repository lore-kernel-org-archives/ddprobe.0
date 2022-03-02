Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F8E3FF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646242884;
	h=To:Subject:From:Message-Id:Date;
	bh=RBZvGju5BUtw3EZPs5/stnHvQG9t3YKmS4aeHAP9+EY=;
	b=f1RiUdDjKxNvaVghnauCyjU0ctPTNadrmzBhLN2lxNTq6qUdQByTzPLGSiFhsls9
	cYJRCO51t7shdRvq75QwN57PxNRJyUWfOYNnQZvHETn03FXtlIhikBYeyXRWUQv5xpO
	DOKRGNaPET6Qsi6GdSyDU8lf24OKPIBDwXGEzDdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646242884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RBZvGju5BUtw3EZPs5/stnHvQG9t3YKmS4aeHAP9+EY=;
	b=i2m1AGmnS+gT1O8JfWEte5TEPINcW6EFq9qQbnzC9mYpkgtqD5kTIlOaNTOtUOcG
	PjIqGBOJfmpZHcFFFrjeaY+PQ6UE7LsGHredUYK8S3dLtWMKHyoUZwMWiL/2CRhJZ3A
	ONzvIoJUdlvoxyGNcuViiVTcwCbksKqdhWrAq5rE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4bb8ecb7-e78a0726-1e9a-4e16-aac7-954cf8c0cc9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b272089d3aac1f59998b3cc53a04eb88e8961b13e5efe9ae5cca130a4ea9e8a
Date: Wed, 2 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646242884
