Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2360E8BEC
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750994394; cv=none; b=LmnPEx3/GTY3nkhW179ez6M6fR1goKjmPi4to/iyh2qAcaNZf840y66DqzZN5W7gUrcqPEhG64qbt8e+oPdS4nSK01GhxRuRxYhjQGkEJTBmFvMH7CnsEh34MYZBAmWRDWn5XqtqLGat13Omnsxlp7xShkGZXgdlkAeDf7ETA9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750994394; c=relaxed/simple;
	bh=0pwWe2br1VK1ofHfpnQKmvsSCO7EHOKLIt2dM7i1i0k=;
	h=To:Subject:From:Message-Id:Date; b=gsFD9/AUVsPtMGQ5Vm/kRdWWOEvxzF5nIMUeIs0aMtQD/oF9nik2N2tVQ34Qm+liqS/1G8rYmcLOAFLsgUeETo7QrNsqgQRWDF6PJtd+hJr/k+//Ljfkzb+VaUECneDmC0G4R5ONLQ7AiyWTGb4ahkCM1eZ+s0PcUNcLzBkSAjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJF0h2oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJF0h2oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A35C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750994393;
	bh=0pwWe2br1VK1ofHfpnQKmvsSCO7EHOKLIt2dM7i1i0k=;
	h=To:Subject:From:Date:From;
	b=dJF0h2oy2hzRBWmB6vx+8Cso0z0+C4a/1TMpdIkvZeX6Djm/b+C3JGcTEERN25Vtf
	 u6QDpmyN2dgcEpBB8GqTvf9qwCye4vlrUsivWyORfPlg5stgQ2z+3JeSVAxnathKQL
	 +AJ2ypHHYTA8LpR5anrMORgB6CcA8IepDuEHlPCSYvuqrVs75/HFu+yLxbwusTbg61
	 nAHl9ocUXzdmemQMm4RtEmsxM/5neY47Kca+y5Gp9aUfFJhu9488JdrJJWcx79AWwm
	 eIUtggLu1/ntVy0YKFgb3gGGHW5aObJEU9jeOZuyzhP9gIT75Q5qoBs2PiBoacm8KL
	 pWD1NXU0xPomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDCEC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099439358.18117.10001411061953302209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f74ca157a720e205bd743ea4ba56c22adebb2cf23527f133337359a4cfe3591
Date: Fri, 27 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750994393
