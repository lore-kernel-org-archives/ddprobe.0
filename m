Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B452F2F
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 659E2C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662454853;
	bh=9Eu9g82H7EzsHjyyxumkZ7mplT8IkYTR37TrXiEOXok=;
	h=To:Subject:From:Date:From;
	b=pYxEQ3f/LtwBdiJCjiRyUzxCkak9BttHinVjPFxt77TlX6Q0w0UBLgfqUL3fRB/aS
	 6xz27FgMkeovMAfJexZ0hseNQ7epm4dFkbKBVSNmI7WreBLY+bv/T/xWWtCO6fyp44
	 KUXw7FnoOiFZ/wYwfBV8HUhxaa3pj5s0ASSnA85AfIPV9hdTqnZXhHhfXLRmKH7WeY
	 RyzMwcHQI4NyFpLbX8FaykWkEcLgbTVWwsONGUd/yPe81cL666mo6tjxKex4EoC+zn
	 OBQLzZn6Mzhn/Ru4RXRTIFjABRvbOFj9U+5ZLQSdnuqEsNtFjrISUcLs6JcaFc69/K
	 MA6d65qKGHp9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EBD4ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166245485331.12392.2222204288966454283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d775f712728f468a92edbe76e2672efa09ecf7979f1ef96b9dccec5908e376dd
Date: Tue, 06 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662454853
