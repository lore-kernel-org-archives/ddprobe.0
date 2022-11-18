Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE8E17C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D66C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668736254;
	bh=Ga/z0n+RLnSkEjUVtzVSUguRyT+6QPgf4W1Cj2vrYx0=;
	h=To:Subject:From:Date:From;
	b=DEWmotsjhN2cbmach2TMSMZb77bAwTxabnX16Ihg8mMuhQjpsli54E4QZDkW2/l6a
	 9u+e4K9r07NxYpIigHsZwJRftUyS3uLlmLUG4xRIy5KAFsbD60AEHq3MUmUNV4+Eb7
	 rcygrYzTAeMPO0S8FlQDnt/0t+HZ382PsX7n/+0TchPoEhW5CVvOZLuHJwXllFRnXI
	 GF8Kya2Npk4bYC/6XpjtToLJE6eL91QH9Vk7okigGEnq2LTGa5eTzYWiZdFqO3Vr6U
	 IPeLyquAiDoBOYC6Ufk2JhgYIUzz9B8DmMYjY2BmMAs1ldopMFH8PzvHnAbz0qj2gr
	 y1rBnfZKFai4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A348C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873625440.28850.17979177887680658418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b66b2f7ee0f75e395edb0698f68dd667f3a855c4ac8f163050dcff25cdd78d4
Date: Fri, 18 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668736254
