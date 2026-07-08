Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415D42EA480
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783482514; cv=none; b=gngZEcCBSAfgxsJgACoOzGdIUOLjQrnZcfWVuTZOUkCLhBsEY093/vCm18LrbreSw9dD4zginMcCPH0yEzcVTttDO70NlpNU1uqsd1meZRfqVgEgXHL8qkn1QJ6PJbGUbRkf4kgGP/b9xbST4Nx6dW7KTcwyXmOmiknUoP/PEKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783482514; c=relaxed/simple;
	bh=bOcz4YcTvoY9i2eeSOmHCZRH2cs5fTz0V7t+UW2G7v4=;
	h=To:Subject:From:Message-Id:Date; b=YIQ8ZLOklxgPu8WQlUgjpUSyK29cLn7+ULU/HPRLUjuoaNnMLZFKrqX/5ZUcUMtBQH+Sh9UDyDsWtNMAyo4oVtXq2EXW7jcASYElUwy6FXzU8+/fRbvL1in4NrGDpx2VVAiZkB2YjmbK8Z4C9lnhz6ncm5tpU3EQ4Az1ado9k0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX8LfQBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX8LfQBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE79FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783482513;
	bh=bOcz4YcTvoY9i2eeSOmHCZRH2cs5fTz0V7t+UW2G7v4=;
	h=To:Subject:From:Date:From;
	b=nX8LfQBY315zgPQBEqtGCKjFVdf/d/nqan91rB9vn89SOhQE7/hbdDHeL/Ax+dejv
	 rC3k9dLcl0R3V5QhTIl6uykjPZpHoLMV/JuTL3JczPAh9EHWprU31iZhB/M8dXu5mc
	 EbiTLYxmlCVec1mkAPfaytpDu41G8gJsb8wRZmlhSxZ2dU5qget3Bd6SwtNb9G5XZl
	 V3M3+G8wU4rb/p2PX+FGChN9GuCOVujkNxzO0iA2xcwq5e/Fq+NptfnmwE8FJ1P0qW
	 NiTOf/DFLxTsGXv0fVakacWMFJwE7E9A8QMWAwvWrEBL12HMXrfbzDS9SLxMOuq1Mt
	 yRhk4oEwvfI1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8DEC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348251368.28001.4244664432633487122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b4107e768d4d614ba16baf4b4adea28627bfe46dc68335e3533a9d3971cd46
Date: Wed, 08 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783482513
