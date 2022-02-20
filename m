Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672AE28E2
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 04:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645331185;
	h=To:Subject:From:Message-Id:Date;
	bh=6kZob7xGf+4aS7WwEfHq/H7sCtZdsCxe240CI4mh6gc=;
	b=hmbfx3qVXfWfqQmaqRPGCtLRsHTLAY3aeFo9yUwWUcRdweOqlkDKu8o7zn8r1Y2O
	PzGv1uyNwtht5Legu5p8IFdNbLSw9zD2LeaCaj1zaTEpCImaE+DOfQUfj7y31VeEcLj
	VIAVBE1fV1xYHjGFIeRGwYDNvo40M6bGEhNefDqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645331185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6kZob7xGf+4aS7WwEfHq/H7sCtZdsCxe240CI4mh6gc=;
	b=KPpZl8pO3p9UgWruGiCgdzh5VCm1CU8r4mqUhSVmxbszLJraCLrRkyhAyi5GB05P
	6c+Y60tKPud1J9bzF96ti1ZxuwIgIJ4Dfnmznm2KK+LJVFjh3k+HTi5/RKVr50aZW9O
	x4P7bsZ6LogHfSPumooo7HPJ19S13gfHydUzj5Qs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15617c52-94bdaad4-ee51-4da4-8789-a698b628f92d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27bc657795145f70a2c5b803bf7f5f00abc18a279c458af80b6ad2a96e9e9f73
Date: Sun, 20 Feb 2022 04:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645331184
