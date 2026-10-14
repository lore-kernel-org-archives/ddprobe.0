Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6360F3A7F6B
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792014034; cv=none; b=D8N5H7NXhMGemtekXD8avbph+UEea1wefvc9uc1j0gPIJ4Gt1bQ/j+9JjPpeuMI0ZJH00z3HO5P+awrXuFV1oaHgZtsJFBkxMEVNoN+EY+ZnNY2OVhq8cOu/RzMBCTDEBDI77QDszFPMZpG9eT9JdeQ62uds8IMnbCeO1B9Iyho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792014034; c=relaxed/simple;
	bh=jp+a63HEpuo5SmNn6ntktjfhX5+0joA+6HD0DyTgV4E=;
	h=To:Subject:From:Message-Id:Date; b=V8lgHo3djJN6cpOzp/jOp3gs15fgM6MM8AGZXbjC5q+FLJ9qoU+yExqLd7RKswxmL3FSAPCMhRwQmx2TEIQg1tk/LtBuLcb8ws6HNjSMmcKwoV/tCYN2mlCMve8hr93RGkMhVCVbRs+KrR6qALjO6joaDWM3Zb1/bVr+jpWTdtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qid9C+mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qid9C+mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D28C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792014033;
	bh=jp+a63HEpuo5SmNn6ntktjfhX5+0joA+6HD0DyTgV4E=;
	h=To:Subject:From:Date:From;
	b=Qid9C+mqvfjQKJA2m4rDFh+u/8VOlV2YIVQRruA6OFnv0/hm/LWHexMI1FpL6/0D2
	 nI53VMJv6cbYH39dkTFmj9Nx1GGWmgMwLuk+sKlzlVv7Gtf40rvL97g0oBlD+vIgvE
	 cMt3bkNVIAkOk/uhSy4LswvhyqoqUu1ZgsWABAwBxhmcCue7oEwnjQXVIHcF4zwTDr
	 opfUTJZlqJ0OnMfLLh0LtEIf4vkAOqY62L2oHi65F0B+j4u6clgmfhnoO0ZwI8DFE9
	 G/B4UEvGIGwzGd8JdCFJmqTiBSeypXQpj4WmWL7c8dJ9mbguMQNGyKNOdyQL4rJwjk
	 KgBVhc3/kr0CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1254CC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201403371.11173.15693418019336221828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63aa13201155c14df2823a2578e34d0131202800ed94cecf18d53e693ed86bca
Date: Wed, 14 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792014033
