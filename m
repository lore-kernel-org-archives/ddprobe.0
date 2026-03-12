Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD5538B131
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773338094; cv=none; b=L9b7ig+LWXMFi2lJPBECTRZtanxCOt8GgooinZMujm23uznkCgXpOGxg/Sw4LLnKqu/cs1NYCC2KTYUi3n7nOheBwJ+6xe99i6H3RetU7F3WWzoKlWMf6WTDJiSMhBNnNAtP2xFfhW6RRTibLEksu6w8T23cpO22PUmmp17mZKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773338094; c=relaxed/simple;
	bh=9yO2qM9nqF+KmxViG6JA/JjFFofPZq/utcqQ6eWRkCQ=;
	h=To:Subject:From:Message-Id:Date; b=gAWUQmJnOUT4ur9DCiN0HZuCVALHWaqFaXxgY60GeZi4XcdaFl4TA61bjOV//cjgOXX1dxmbWQTkSeSVMpjY/oJQH/6JcsF4B+foAr9B2HMDKoW+NqvnUGnb7IloNs5Foe78xHmcHizUu8CQhhN52GShjkbWMmllzDj3OWywKHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6uG7Flt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6uG7Flt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEABC116C6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773338093;
	bh=9yO2qM9nqF+KmxViG6JA/JjFFofPZq/utcqQ6eWRkCQ=;
	h=To:Subject:From:Date:From;
	b=p6uG7Fltqeex0gDaQz4vJyNO0IlHiXY9Df7Jq4hvCBXHybSbGLjowQ7tds0rzTEqy
	 YN5LN9jUA1PcJOlQd0ukXLnNCoWSqTQjpgRWrsDrDRIqKXJfQOw29KPv5PdzWYN2Jp
	 9zZe6qKu9lhaq+OzZrQ3xHFcj+8RqF/yIRiadTBiRcJExZjPgMFiVX9oq/fiFraT/w
	 WRBSJfRVcnEF6J6DjVnscNhr/gZ7V01I/LTFsmzY6KLttDqAgG0VdfpS654ZxM5Hec
	 131Q/q9aLGyztjuQO6580PukGU+dmCnIvaTCH0P97qNqFtBmK9xQOAPSD7IETLKr4z
	 y+VRwgBZxGLVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0AE106ACD2
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333809357.21722.15539224585239080201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797dd51f7b712fdfd811a84a192a629145aa31da560920c5d6767a7097b7e431
Date: Thu, 12 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773338093
