Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A58B6AB3
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 20:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47D4C433C9
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 20:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694031248;
	bh=A3eV8m8G+x6jVKxQT8vwTfLJNjquZyH+8fbCO4FpZK4=;
	h=To:Subject:From:Date:From;
	b=A3//hDr2TkOpRC87i4zTWJ+8xij3e+XHpCDlQA6/YQky2t8SNmLX9/SPmn4/bLBrA
	 hVBvFZfo9y1E9mHCWk1u1i1uoGq3zvARhA/Sk5I1cwjmdtt1YlmOB7wHkbWjX7AM8C
	 MTyY+Mtx3i9hOK5S1VnGlmYIW/MGDFLc9XwCPn3zuc7VknZGxFiAR4eTLhs1j5kbLU
	 MHiAbUg/EP0tRWmlut41Va0KePWJ3kGn0b1BBPlvlBeKY4Q2SUfZYnsiXOHZ97uEOP
	 BixPSrQRUt/TCuSb5w0DIxKrWCqbaAF5KKgFc3x7iVW94oCCcLi0JsYQtyg+Qi48AJ
	 mLHOysIs6UBhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1B7EE14D6
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 20:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169403124869.11907.612052108656559938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c617b17a77f2cb9a92c318b30ee0ba72abbaee947efb8ac1a5b8ebc898fd889c
Date: Wed, 06 Sep 2023 20:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694031248
