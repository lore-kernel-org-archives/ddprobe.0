Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F48367
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657937812;
	h=To:Subject:From:Message-Id:Date;
	bh=2rwkzn9HZH24ppGX74OZqlwYCblasFJpTCFfvKr+jac=;
	b=WKc/4l64n5IECkvZerqbD/dXCr3IwPaJ7hSqYY75FaNydvElogwrt7rXJ6+Wpk2b
	SGQvVSAAzUgnR6srOnk3IsqZ4b5aF0U+IoT4f3j2y/KURbiRNT4zQofYJO46apcnS+I
	lOMlwg995eF1kHR7j0zvXzLFe7HnV953OMb3eFkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657937812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2rwkzn9HZH24ppGX74OZqlwYCblasFJpTCFfvKr+jac=;
	b=WSHAb779LbOdKznQEjmKcHO8h7Naqr2XnPZG2FslUlewOGG6jQRaTEpQff6vwCGW
	BDxCrxZS6wMyQYNJimRAaFMGHLRw38sCTPTgFt3iF8hbz03+SlvR5h5awmwlRipnE73
	R78DrEa2kW+PqpJB4D/+vLIR8Yh62HXL+dadqo1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204cb5b43-ce6ff5b6-5c6f-4784-b0d5-ecdc7dd536b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ef7067a774cadb5f74d7d6dc9beb838740f18b0be5deff561a3b012d02868b6
Date: Sat, 16 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657937812
