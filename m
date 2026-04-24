Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AC327FB2E
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777031854; cv=none; b=UygQtj78wXbi7qz1NTXGNr0FJcNctxDItP18dj07+NciGlr7wpcQz0IK5sysLn5xtJ8+8flxJ17yHA7qoQ5MMhA9r427WDmHH5KYYRINv7g2wnyeCuOxB5zSxCRk+1wIvt+a0WeIM1yvPVa+qX/MB8HvmhK1WEKcAWoWaEhwGOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777031854; c=relaxed/simple;
	bh=lAreUxkOcwtOK3wYAJoGc7qhlzEipFIHg4jKlqgxv8M=;
	h=To:Subject:From:Message-Id:Date; b=sVbYYxlJaK3ek0K9AHuH0Hkl2HTiKduYBfWjN8PRY7jwnvmNw6TvMWe2hLC0TqC8bM2KQvVAGnWdh5a8kgbmmpnNsH0rXUOgnGPCKwiIs96vaNb4K3VbzZl/DBO7pt7pIddD3tolj3zm3dna9iVUp9ktl014Lm+w0ISMz929ywo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oS/E4Y5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oS/E4Y5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7EEC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777031853;
	bh=lAreUxkOcwtOK3wYAJoGc7qhlzEipFIHg4jKlqgxv8M=;
	h=To:Subject:From:Date:From;
	b=oS/E4Y5FYhNP/UAn10zCh43kAnmTnwOdgGGXJfJ+RabS4jk12831P6nGExIu2hzkr
	 HEQryDtWgU8KPTejYlT70ihw8PDHcKSv55H2dEVez9g5M5Hg877HhSF71TRQ+qAQfV
	 a4BzaAhIpnBiHTmDZl7O5JeO6E6rHFPh/ogKnaUi0uS+b8bZQU8wUytgSYup0s9JbD
	 MJSuuatzY3IRfD5nDADYe8/+vqYh5m7IbHs+x9iajuI9hwcF6WEKWtm7hOwaxt0FPD
	 lGTdGxQEfdKtz9AXm6GU1aXRYSyUVkaKWXVKLS3hGcAP1TkLcDmBoFISCV6yRQX+Z+
	 XkG0QZIc56WYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00C0FE5215
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703185368.20047.2841646374858366718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def51e247c9d916f1c501d2e996a2c9518a60b048d6ce4392b89296d629994cb
Date: Fri, 24 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777031853
