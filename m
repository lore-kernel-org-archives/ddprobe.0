Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074DC3B3C09
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772633094; cv=none; b=cwRzTvot2nvD1CYR49/S8VYOS6zcbufioUavx2VPgUf6Y5c+2tHNUb/kKIcRxHyHoFxWXNfjmHw5nrBcr5r5It5UEp3Acf3LVN8lm3xrvsX2uJI2eb3dkG/3SH46Im6NZ5VuHIHQnjyfKT6yk8TCed6/jFqtEpb5JkZcxDwyGD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772633094; c=relaxed/simple;
	bh=1xa9TgvPIImw4vIMpW8ltU9yNouFXXB6hZUbGvbfToI=;
	h=To:Subject:From:Message-Id:Date; b=HxNxXYZPyWQEteXgkxN6gucdUkwiGfN33fKYwr5W4q2Q5qNde/KMkQxcbAc5x0J2WPoV/kbIDzfw7njzVp2f+DbRe1G36KPuv/PzPhPei/3j7VtIRyNaZo2s+V763ZOyPcKpe9Abn01TSiNnCvY5nr6au57+HmolbfCxd+OeYjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WS095ThZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WS095ThZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3BCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772633093;
	bh=1xa9TgvPIImw4vIMpW8ltU9yNouFXXB6hZUbGvbfToI=;
	h=To:Subject:From:Date:From;
	b=WS095ThZ3wnw1gKuLHi4PHGsULbTEkyWP3cCDFAaZM2Xmevum3Oqx0zsoPAONIjr/
	 KVGi/gnem0F8V0oYHDmBEA/T7tTkbr/Mwy7Vn/RJ1xqxtxOND+yy6UN9Kb43dqBGYY
	 dYSbKdmwfV2fTZXfXxV7wJ6XJfQ5m1ynhS59pypfz147zoWhG7AnIZEPBaD5BZwtst
	 UezpVca/JzYnz+x/pRby92w74ffRpJGIfVpHtA/ZjSrpMJeSXQ74LxP5tf9eQvHR0t
	 g6UP1sXlJGrVdEv3HgFCwCUgES5hlfH4fUZWf2xhNZwdKrJMHQ6InfpEMufNw7Vxk+
	 NDtxA7FrKvvUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A757CEF8FEA
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263309364.27968.6359999617299468969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0422bd2ea9f0d674f69d69e1fd837237be3fb0735abebb6016138412265e7f
Date: Wed, 04 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772633093
