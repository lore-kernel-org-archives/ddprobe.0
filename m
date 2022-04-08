Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F42C2564
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 16:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649435338;
	h=To:Subject:From:Message-Id:Date;
	bh=3M5gTz2zJ/HJclJiZ4sSUYDEWyM5SRyOcRpPUywp4MI=;
	b=bvzpcHcdvDc0Dy3kuMcoPBq4bdazmz0k9n/XtA2aBlhJZVirBV/lW+9M1045l7g0
	5uXx72UF71stAUKYaUNix9RnjgtUq9wH7xi2G5OB6Q/ba/hIJdYYLRk5r1/XeGpQ53v
	Ziin71IlJNW3A2gkSOud2QIk/INGoKgQ0bf41oBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649435338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3M5gTz2zJ/HJclJiZ4sSUYDEWyM5SRyOcRpPUywp4MI=;
	b=cCp0Y5uaaoxfEhf2lRtG+14PEjhX6eprwqrKRK2pOTrXenJp04bXWUH6CyC2NDwI
	qR0h09MBazSLbgCu8UItxPSlUppvELiJKLWLUbPlVdgdlvwsUYLJlLcjUAdcvHnVP+9
	nv2JWq00KtaQIVzqNkYixRkbYo9fLEi5OLG5G4sI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800a01e622-8f0688a2-c776-40ea-bd8f-be3d454bd9f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e59b17a868321fc6a252ceb7d3b59fd997a55668f9d850da4c670e50bbb3f6a
Date: Fri, 8 Apr 2022 16:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649435338
