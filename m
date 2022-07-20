Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FA21C3C
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658285812;
	h=To:Subject:From:Message-Id:Date;
	bh=mrAdnvlFW8mo8lUg3xNvcs4ds2VaABK4DEuBhBLMqQo=;
	b=a3Tb/QiJwDTjquUuDr6Q1qxoEJpZVSJxrQ/A1cU+zYwoImsL0XWADTaUjEi1tX6c
	iY/ecY9kXUWeQIsS8atrP26AgCDfJE/XuG67a7AmC7FUuFpaUzVA+hAy5dJYIlyWVMn
	7cuoy0dpLlmRE52I9tKd2JwLI3oWsActpXqgPQ7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658285812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mrAdnvlFW8mo8lUg3xNvcs4ds2VaABK4DEuBhBLMqQo=;
	b=UDfmAHNTwEQdgTXcKiRrl99IXZ8urZAOrGdhCt9QqaB3AMNtE0E0yHDvG6vDwfDq
	GPDZPi0JlVsWA60UaVGgLBDVIvivRJS1A+AT80+uxF9MGPu2tOFFoKo1Nn1Nda0CdCH
	/nlyVb2XOyj0TU9susy/kqZjbJoWbTAtZB+O8fhc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018219896a5b-13f6ca69-3ded-4a62-955b-345deb035802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83f62cf1a6b495dea749507fce46103a9ff2ade010a439e797ec49696ad1581a
Date: Wed, 20 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658285812
