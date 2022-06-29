Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547417A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656499012;
	h=To:Subject:From:Message-Id:Date;
	bh=vaMPIHy0Va0yeq7wtlUAMlV86UsY1QwLxbmdE/epu4Q=;
	b=TfKIP5JW2lzZAR7+1nL9b6c7AeVnbV/7/t7kAaJFm03SoAwUa6r354zMl0lbVdcw
	gKRdifnyNyWMInE0VW6ZNByLXHOdhskkkkOcfwDVKKvTrRHeSXeS6W6nN88bmgcCSRi
	b1LZ2GWUHjv+eHjc9dyjprbuc9hv6VElWWtV6Lcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656499012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vaMPIHy0Va0yeq7wtlUAMlV86UsY1QwLxbmdE/epu4Q=;
	b=SuUeITYVaw2vx3rbSEL3Zd7Pj8TSS+FQPVD4sUSTcrEWPAEcYBFcB6xRTulINJpm
	P4R8GlCK26H7Bo6l8db5WiuC7LkjrDuCETPjBaCc/6/2ZHYy3uCdDHBzSxHIlPfH08+
	GZskWGrgznC+BVZZ0cFBpqtGfZcjqPq2192Jd/iM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af0902e0-7c895910-df54-40da-afe9-631fc915be86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db10ff1c9a56f84be25b4e431f90ffa480acc423cdb88c4fdc2d2c8f7b92a1f3
Date: Wed, 29 Jun 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656499012
