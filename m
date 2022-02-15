Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D569139C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644936384;
	h=To:Subject:From:Message-Id:Date;
	bh=f5r8U5NdLARsHvT323xfoiUEuF9W+G7dtwW2aCck95U=;
	b=CH9RI4q+K+XuQ3j2Vjntx+qkM9OzTPilyyQznM/dvYjrpsMpdFgxzwxYhamzQ1h2
	xYbSFTZ4O5s+CnTn3C0Y5CP4yfOuPK4d3RdTEnlKAq+Yoe1aQAeamD9QcUa+VhQ6/Dc
	UYwvfuDx5k0+ZonjIfGeGFWeQ18GGEoTljK4lMxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644936384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f5r8U5NdLARsHvT323xfoiUEuF9W+G7dtwW2aCck95U=;
	b=MhKCkFfQH1d1zREPy5yIdD2Faf0vxcqRH7FVDbiFA626Di5y5m8li1z9K75j8rla
	AQk9X/V/ZpRU6Zk9zJHXRGbjpuY5kTUj7mZIbk/HtESf/iEgoZdE0pjK8E7jzmD2d/U
	y/w/XNcUStAGSztml+GzMkI4KqhjIlWqxZntFCo4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efdd95100-db73fcdc-42e7-4948-8f62-50fbed22416e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63fcf0951c08174b304758e7cf6d7d23080392adaa9e1ba997a0bba13166ec75
Date: Tue, 15 Feb 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644936384
