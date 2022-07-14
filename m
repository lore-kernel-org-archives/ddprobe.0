Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1830F6004
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657822012;
	h=To:Subject:From:Message-Id:Date;
	bh=/nJotX/e31FllclK+r3ETxnT3QASC3LwnP70A9jPx4o=;
	b=ThSXsTkTMhWw9EdJBHHVoHL5T+mmCR2GlmORqmohuFggfzSl/MECeFDrxJqL+KLF
	8kqEI8vWifc26KlnQDeQ7DIfQ+RVnUFOSsQaNUFj8Zb9X1WqfQgsjefV0POi62s0ezD
	1jK1zABtl44/g4QPgNpxo19TJE4xbMoFPrBhRX1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657822012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/nJotX/e31FllclK+r3ETxnT3QASC3LwnP70A9jPx4o=;
	b=V5QK6+Lkn3i1LJu9hbzK0hqInm2sm+8lTnFWjJ3yq46RU5tJ38Y0iEkxPy1+kHnR
	8IxGaGSXkwjJynGh8cF3go9q8scax3MrWKflmJMhgOkfBa2LIp7ff3VNHLSfDCiulGv
	Bp/K+8Pd3+cudCd6iv/DzMeP7n7zw8HBI0NijlgY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fde4637e-1d367669-693c-4cce-a3d6-70059067e0a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b8645e10448ab2485c31fbcd4bd47af4e79db40be0f67ad7a9b186dee04e33f
Date: Thu, 14 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657822012
