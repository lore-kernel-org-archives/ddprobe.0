Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B83E1DE2CC
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741338534; cv=none; b=pdh+SFxC/vt/vYqRoffiW21h/dOmYK0O2Lbhb/ol3rG/ZvHqE2RiQ834BsYqfTy9KxDMrYkmtXV+OenMCpVd/mCz2Yf9sfO4O6fo9qqxKwFoOyH+D7YyDZqUgizfTHoH1/HZMYv1m9ghK8jpA1ulEH7+1bFdpyzf3rV8cpDQ7k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741338534; c=relaxed/simple;
	bh=fJOB8rwV+NMbE/OSgAXfsw9HD/Zy+sE46pf9f4eCT+U=;
	h=To:Subject:From:Message-Id:Date; b=kIw+0LlRo1kgudPuBpSsbz8RYNwHrX/nh5e3cBIhZkzFMpdyV81dCW0F4K00OpM899xUkAGx/97Ab/Cc4AhhPlBN1UH3HYOm9yxfUOm/+TGQu1FGhDI7owYgpubCOgH4TOjUXLpzD6sVXtNbCqB1Snlml2smit6iTEIRmOTfYYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuolOMlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuolOMlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BBAC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741338533;
	bh=fJOB8rwV+NMbE/OSgAXfsw9HD/Zy+sE46pf9f4eCT+U=;
	h=To:Subject:From:Date:From;
	b=MuolOMlXAsRi6DyBO0p9KkrfO8ZgDE3LcOnPQyEPYixNXZJfxmHpMAPE5RYvWp5X2
	 WJatmjHS95S4tnpTFUwqCs7UUnkRj4/mLt2CIQIjC8YNcfk5ruKkV4xvtTP5OGAogu
	 H/pdy418NS35Qj2ADCk75tB9r6yjgjNP8pvFInEvfr+hBK35MXgmmsTOY/e6r+iUQ8
	 fglpznpKmoZTfkatgGzq7XEmqNhiJ3y56taIJ+WxQFb9C/e8iWKZLhTN58+XbF0Vcv
	 00suAtLPyLpcT5qvnk1JRxbYY4A1RXJ0euFI2f14+KJZgQatyVUPjTSAaSs1OlvKdL
	 1jvIhI4rDAD2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97248C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174133853359.32050.11497122883001150901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8cb05300c389b40bfb321b5c195b4111fd426727df00810ff251dbaa4714be
Date: Fri, 07 Mar 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741338533
