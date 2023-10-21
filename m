Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3140D210F0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajFqyArI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 963D8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697924896;
	bh=AfqN3o2hGYQwrbpgXZY8PpS5gvVCSH+ouG1joyQdGAY=;
	h=To:Subject:From:Date:From;
	b=ajFqyArITzaHXObpJ1BbQV591rQroZ29V8aeHE2H4Lt0d8BY/cEkoTkYjXmpHwkIC
	 2JEn012idSBcSR2raa4P2iDWe23MPkE+jd1klnucXzcWLZS9y4CAL2n8+qFUzcrhoF
	 pzhI0VcZ3195UR+8d5WXaGAId8F1rkFuKzySuLVfYoPVskFwfI+OJcOWH9MSCIyH74
	 iwO76j+NKHsG2LFeRkdJVF+93vRLdVqdf2SmvUnFK4sJeBjPNHuvUaghEaJfuMH009
	 d1++057JMSlH86gMNGt+cCRkEBr4MdWbUYbeWZKlkZ1F8vo8ywtr3WVpiJxRHLIb/q
	 nk5+rhAeVbznw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 750CEC001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169792489643.19183.5407865816922348469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be88fbe4cb3d6d55b923a4310402a32055e44d3bf8ba4a5868d879e5f026cf2
Date: Sat, 21 Oct 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697924896
