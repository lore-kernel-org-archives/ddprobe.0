Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7497E369B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645855584;
	h=To:Subject:From:Message-Id:Date;
	bh=7XEh4wudHJyVCLfyv6kYcCtWdTMDPIGiHjSGS+nJeeA=;
	b=ds8Uz5XCoKmnZPCiNtzbCscjxg/olsbhiI0IqK8AzLt9s/4HGro6w62ZVkxM7jyq
	fW1MrWYZkrRDUKs7KvYneyheYhC0ZmtrCWpXUnZgIRnyCJntfySEILGftrslkaum8Bt
	BaL/94HjmPn6ijB6YiRxKvRg8HGthoeRZnyMGH54=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645855584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7XEh4wudHJyVCLfyv6kYcCtWdTMDPIGiHjSGS+nJeeA=;
	b=MSUsMli7Bfhk6NqRlbDRhtVhrKQp5cmHbss0xEVaxjAbebWV3y6XXuhcikiAKWEz
	VzR+yegeT+MsYe3Oo+KuIYYV1vOHlZVIR0Ew5RkfddRaflBM1DjQCGUtuzr38rzRZVl
	L4CYwTvEcAK5n70Tw28Bc0FMqzsHrhCAgfIwpjwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34a331eb-7307ea9a-d696-4a2b-a220-f27265247e6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8476198a616bba06190db6746cc4107a33a621e7f85b47acef53e71fb63bec3
Date: Sat, 26 Feb 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645855584
