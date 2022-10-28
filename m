Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85AF1851
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D292C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666920654;
	bh=RirNJMhpQgRxGJXsDQ7pTX6E4pgk5UFdXiLzc8Lm3ck=;
	h=To:Subject:From:Date:From;
	b=lbq7FP+6NBVOSPZHR78cOK/2UN6MXol07hmvmlVaBWhKVOCR+Lvx2C3HQ8CUreBdN
	 g+8IMoFbXN8tVUuUXDkKMlVPimg21XmEDwlMi7rlAMjJE6tEUMAlK3VcTJUH6jiS4I
	 mImw0U5+ZTz66Mfhn/qirr/OlGg7SbgIkwbo9gEONzsPxOZOPjpXp4yoay+ls0UbEy
	 iercCxaWAdJ1Sk3McUiH0jq5esdPgzs5TPIlnQM8Sz+jZAin+plssIbaQwPUwJr/bE
	 q3OKeFto3dBlQcbY+qqajWMbvQ94rFlCl1GuN6itBf1Xm4eOTksldAtqKKKLVCIZWF
	 qRf6pwnCaNvAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E7BFA373D
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692065432.31012.11703591210775863491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472e11dc4baf991df6e1ac5687efd9360c3e6bbd8b6f362ef77d8a2bddc88198
Date: Fri, 28 Oct 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666920654
