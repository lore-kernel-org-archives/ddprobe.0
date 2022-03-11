Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E4E7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646986284;
	h=To:Subject:From:Message-Id:Date;
	bh=qi7h93fOG5NiEzRYALCeiMPZiCOoq3uak2DXw7NiA+E=;
	b=IS/Jwwda9+UGR0BVlAXkILM2SFDZvBVq4tuwXMUOXQDQKHZNFqg1DnYPEoJ1jEfW
	6b5OvlwL5ReP9Cpx93GXvoi6OwhkPhjrfjV2NUfHSwRKrNMAeAEolMj2qN/Vce7J4DC
	DBv/yLImGVck127X3VhAAiWKhSUX7+dJF7JRpRMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646986284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qi7h93fOG5NiEzRYALCeiMPZiCOoq3uak2DXw7NiA+E=;
	b=h1ahcGxlceaWDHvoi5WN4uZglEr+R7k891zQwGmt0Hr8HUWPzXIMeMwG1gKT6G5l
	LMioFPH4z8fgOyi9OIzpw+sjoeUkc/++COR4uL96UJKkKOQ7AovKfJAtzXR0qgvfKT3
	hmiOw83HQHsI1J4b7vtCuhO8HCAsmil+vSAhn3iI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78084ebc-4e70474d-ccbd-4925-95dd-1ec52ea4c40a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d17a7a418ff5b37aacc0f09b2f0db5c96caed837cb996a30bd04c62dccf6f04
Date: Fri, 11 Mar 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646986284
