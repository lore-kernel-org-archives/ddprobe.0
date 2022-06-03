Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E20E1367
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 17:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654277399;
	h=To:Subject:From:Message-Id:Date;
	bh=Tc0Z+v0pXCsj8aBmu2M1uxo6YPXoOB6CqnMQqKEFyPI=;
	b=GTHLOErjOom9mywB96ivuJEJWxtUXF+JVRZoTsbMWCZ499ZEMfqm8sbDrrOFD10q
	7llhK7Uh7TbvWk0XquCMI8qi0KNnxyIZ1TKoLeSJqNQgsWZkAE8n1R5dG1b/ctBRqMl
	M9SyxflGaoFD9nz6KdDHU+MJPhgH+cCo36mZMajs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654277399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tc0Z+v0pXCsj8aBmu2M1uxo6YPXoOB6CqnMQqKEFyPI=;
	b=C2B3Privf72wc634PIGGuU/k6oJLM/51bP0UgaliB4sH81slZN0LqUZad2rV/xC5
	MPRZg74vTUE+tSyB3O+fai/34sgET1NcPwCdkY9RiXmRfBD1j5TQ8R9KIoV82DX+4ey
	8klA7y3KOVBBqOObQDgkvgDSs68w9acSDzEayONw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a9de2ee-e11fb50f-c486-4198-b778-1f467bdb7466-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55d4ef6650060de995bfe71e0e34f1b4f424c549425c2c5df441297241c0315b
Date: Fri, 3 Jun 2022 17:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654277399
