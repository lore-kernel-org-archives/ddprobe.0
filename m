Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428AB2F29
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 23:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651532638;
	h=To:Subject:From:Message-Id:Date;
	bh=bYwO9YuAGmJLzhw3UIx5Ca84EJwPCQmsG2FpZ96pVh0=;
	b=VzcEwaLmw2tLd21d6MdvbqUt8UhYCk8FaDZtTwsfe2PjfH3HGqTi3AOl0WglROYn
	NX7d+lkwgx46gRgfuoPEaWdzdMfFmGE4SREN22IItQ2EjCEj2VzYd2VITuV9l63rNXt
	EmwaxtrDmXl/5YlO/CqoxnqGFF264oL/bBtBSKdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651532638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bYwO9YuAGmJLzhw3UIx5Ca84EJwPCQmsG2FpZ96pVh0=;
	b=Pqqrg65aVS1IHjjOTZjG07xQdvaUeWzAF/wQA18ySBuwqQYHgyxEQ6/+mrF6qcWC
	F+zTOr3qbLFqeJkqtvNh114djfEGl/XMHMth6TEYTuvix3ZoC7mkj9xMOz/vWFpWkxk
	Pa2fnX5bpua1850erGnG/a89IHlPgrPX9EWSCCRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018087042860-fff1b5fc-1b62-4294-bd25-74433c302342-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c841fcc702cebab9ee21f63fd62b945e6c0077ffda453755840c339addbc0a25
Date: Mon, 2 May 2022 23:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651532638
