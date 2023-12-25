Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4F751C43
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpUZsdZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8733CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703516896;
	bh=Lwv1KbSOhPjUFcXqrW93qEaci9Ex6SLLhinlVLIvsH4=;
	h=To:Subject:From:Date:From;
	b=XpUZsdZZBaYSuOh8mvRp9/umnqt5sq4/U8CD+ll9dH7tbTZ5PZ20JoViNf1gCGJh9
	 dmV6wR/ADgb+gh4d5TGGiIGn47qdHrxYU7fj90o9bYpUbfOiO8G6ucqrcA+Ni5JK0K
	 iDWjv+fsw3KbCo/XwG2FFwt7P9cKmjnDEh5Jn5dcS2wxag4qCF1JBaIqyBfj3i3Ie/
	 k8BJzVgJO3KVxmnFY4WcwIPHELk6T63r6NOFCoda93vStT4CTkLMPC2lDJyMfMFmEi
	 S5CB7HsH/YvvVGqNpYNFqyHNjFFI33FBHca/SJWBcG/G6mAMGy5VLMnMiq1fp+LJhk
	 sTC/HK8iEdY5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671A3C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170351689638.26004.3491075078868206016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a9d8fe8a7208a83170fb181259ab57a441f9bdea853b9060b3082237d850d6
Date: Mon, 25 Dec 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703516896
