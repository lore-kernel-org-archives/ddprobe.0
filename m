Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A8CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 14:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655823359;
	h=To:Subject:From:Message-Id:Date;
	bh=+nARdL6fEAdPzC7VMiIrk23ZQlujBDiwCPSO7BJXklE=;
	b=HJ2AZhfTCuA45QCYpvKw1SwnXhMVymW6MohVlprOzfZrSCJHlsGSvQN8FLOzipN7
	GKm6jbG65CkHIalaxT0y1QqcR3r4S5cvCQoavn5d4X2zB+Xt04LPjykaQ9Mi1/75v4v
	dhKloSONXjEfzkAZLaYZJEP/8P5SlUkHqNKk8Bq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655823359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+nARdL6fEAdPzC7VMiIrk23ZQlujBDiwCPSO7BJXklE=;
	b=WUYY3KYUjFeodo3jAj3mJcctCwSkv/BwzOvVk6dPSIuS5Kr5+88wWcZU4c95bnSe
	pOUhfa/L51AbGzZM6sR8Y2imDTCW1l9m85YwjvN4Sb94AthAxu4Xuuljesmt0Qfjfjc
	6djkt6HnfYCgB7uGchYaHrxMiTXIaet5JTTUxW1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018186c35d30-8ba4b612-7f74-4df5-a765-3898f745758d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c209552bf5f9074cc8d995ee0714377be9e12b9c9be80ba186e33571c6f8ef7
Date: Tue, 21 Jun 2022 14:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655823359
