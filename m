Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F593EC0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 14:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655042939;
	h=To:Subject:From:Message-Id:Date;
	bh=uzOBwRE2XCaaL6bpkA7WSx+nVLBJUKaSqlP7wVQjdkg=;
	b=cWy0yMdSVRpXPoFYkTzlvLOgJaQsjwJdiJkK2MfEf9w95gVriM/78bYrZO7e0AWZ
	gHTzrN9RsBUYgwP6rIpoMFG8Ajm0Rpl/E9MPsDZJD1mHTr2+vRpKJddLWkljcrE9aHn
	C/amW1fvedVdtcVZm21SGctWXmz7Cfh8bMFDjbjk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655042939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uzOBwRE2XCaaL6bpkA7WSx+nVLBJUKaSqlP7wVQjdkg=;
	b=i1B47e8fQeWQruohkZKUWSnNX61WdOGk5DQTmovKvXJbPxFhb3n2EfKa8NTPEPgX
	p920CTEKbWXlVf8IEsiznu+uYWVJFMJWjw/dBvdI4xCXCzGjylGJfDHf9pgN4UpYfQ7
	tNjUsP40Dps6utAPcac94W6pDVen9SKI/WvfO95M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181583f19b2-79c07ab0-e51d-467f-8dd3-b7282240be39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78e6724d13d5c3f01b174c3a2639a459f260a0bbd2e0a492ccdd0588a4ef362e
Date: Sun, 12 Jun 2022 14:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655042939
