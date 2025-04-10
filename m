Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD474D8C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744262994; cv=none; b=Q59S6mkII5FhBXNA3xdf1KxIlnCUBXJsegqqRWD2oGSBMu/OjSqgLDds96NbWaqaOgFERL4/aaDCQRv276xVOnwjC5L9oAqRrfhRf7mzoUClk7cra2T7v153sxSaJIU6GH9Wcv0VpYReAx4PwH2NrVscqzStfV2/us+4D5i+q2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744262994; c=relaxed/simple;
	bh=+74ML6e1VWKubwt7UdDCBcLfrP5VSiQ6vEY4HyAdGKg=;
	h=To:Subject:From:Message-Id:Date; b=PYGi0M5CmNZofEQyN8F2idb1d7DfxNqn6+i/8+3QhSWhmfVdEmOL0+6U1J3H8zUwlWoI6GC4mzJIq7xWJgqxLVbvZCqvmEQj+LeTrbzjfgfHGp6DoxhmLOcDiWSUs6ECj8hA/bvis4UonSabjryyHsVH5Fh2CEDo4oNp+tuZOsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qU3tPJkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qU3tPJkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CF1C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744262993;
	bh=+74ML6e1VWKubwt7UdDCBcLfrP5VSiQ6vEY4HyAdGKg=;
	h=To:Subject:From:Date:From;
	b=qU3tPJkZAlrj2jYLlpORCF6hO8IP7hMjd31tAgPI1fKdbUAa3VlR4kr6R4R530dcb
	 8N9+h/nVF4sLCu9cbC9Dv+ICmFAucOgkn4AjG0C8rZXnfasdRGTUnwp1CHzKzFtbtH
	 imXpeE2T1YgLG3hwMykChToPevISgy9rdkhfdIOqGfaGkrryUTQ9AODO6MWw63W3EO
	 BxfMOGN47wE2wzjI5HnyhwhAgGaE8FuszOiOi1bpJE6JZ2hSeVbQawRgZl2RaQY6oE
	 u4QlYnveLs3NB/CULsuj9dOY5lsIuu0ySBXyAw8/Jqni5EEEq/YmgzoKaRgztoYHaG
	 jZpLszJuX7UhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D62C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426299359.22741.7817581966183151988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b27f8ad96256b676aebca6660c21ca03707fe6398ec1e9cc2cbd2791779d09
Date: Thu, 10 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744262993
