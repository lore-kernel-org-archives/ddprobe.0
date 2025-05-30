Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6CD1D9663
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748595594; cv=none; b=SM5AK8DNm0ZicBLB+vtB1T6KE9fylYos/ZEFNMJ4OoketLzHrUEsx5HoVG9dcOcLNv9jQxCvHhbby8ePxeOncqHrAtYq77r5Gqi+R5t169FlnWYxIb9WpgV+dG4WkFaCNs6ME6Qjx8tQcCtfnc6hX8pRpL2OUS0b9/yaNZOEHkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748595594; c=relaxed/simple;
	bh=vrw+of9Fu0kU5nizpH2cdD7xy/MK2eFNXUBsDW6L4yM=;
	h=To:Subject:From:Message-Id:Date; b=OpG/n5mzC1kwRAwPGPGsddBSmT3cTVrrOomZ9ivEkIvuLvhcD6+yU4P5s1HR+NbJekc0VJ/2Y4188m/VXduvpym8WwpTuDJ6jike6QYEgsJg04aEquaWGCS7e8QN+d8h20o4HDWqHJmyQECr8pIxzXmSpJJWkq8spJ3t0ZXi8EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gM9KNpfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gM9KNpfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43CCC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748595593;
	bh=vrw+of9Fu0kU5nizpH2cdD7xy/MK2eFNXUBsDW6L4yM=;
	h=To:Subject:From:Date:From;
	b=gM9KNpfHmfmAAK0tbTeedtUH/oPXjclc+iKb7XYxZqnHfdFau0p9nnBq/mHuAMEfo
	 S3mrnw3BJ46+nYbkF5BfJn5RVTwih9k6vqQRt28ArbNqF8ze+obEwag3HZZ9xW4pUz
	 iJut0RBLwM2zcONmWMRBDZn5aSWhBln++bJRHMm/ZIdda6nk8BM5e9aqWpnSXOe6CX
	 K+Waqzmb/TpfCOW9uiRzJMSkJsEmgaRiLcMcUcn9pS8PGE1hFFO2D/j7qMpEWI1PvQ
	 u1XctOYF+Tq42D9LUErRPoTfPudt7MfaYUEWW3EkxA3P8c6fLQ3whaCWLGfMO7ZWJp
	 e9qLjdOnxxZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90682C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859559358.5298.10850933202393217352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba910ec135862eeba3a93a4e5315b230e28b15f6d16af144f7c18ad4b3bc21df
Date: Fri, 30 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748595593
