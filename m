Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E65423A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 09:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650618898;
	h=To:Subject:From:Message-Id:Date;
	bh=vF+ZbF50RWjQaB6QLa32MRkDagXVDCpRj+OLUJwAx28=;
	b=UihSRcX6Mr3qnU2qb0xNS309b6phS7wvKLaW7PiFEBQcoqmJLpzKThcJxMsbGeAA
	4kPBMznYwu21VKYr2jjW+OnO9FT5ugMQoCwTDuEMglXSlm3/EkpsRjTkqr8qnqFkzft
	GIWE5/lfjBDE1S3CtyRb35J3dqvKfj2Ea39gaGLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650618898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vF+ZbF50RWjQaB6QLa32MRkDagXVDCpRj+OLUJwAx28=;
	b=IHmVb4HvuQ3aSd7CXDYuyKB8+vcfTUlX30IISjqE6IIP/as8AREjOhXgII4LusqZ
	2H5gcFdyewOAzrhJvX3Gr+VEoJfZ4r9nNwx2qfyMZK+bc1WHHx0oXRKCw9ltyjg/hSR
	xnxPpbAAsE89o1/I1RaLSlcFzXfh/ynC0of0LB+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180508d9738-70ce861b-c617-442c-9669-12965c0e54d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 808ff472119903d0caead6d244326d6cfec85379c2a0dc4675513afae39efcac
Date: Fri, 22 Apr 2022 09:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650618898
