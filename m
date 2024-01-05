Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDCE2E822
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ildy5rJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3FFC433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704470296;
	bh=FfirbBVVJQgE+HCvSVzQfKWWL1BQH4p5gkYtgHIDTaU=;
	h=To:Subject:From:Date:From;
	b=ildy5rJ7mnuHq9o0JNpkQxHXvHoMRfzvTrmkCz/ToU40gde7zBZQy5xwlRJpw2IVQ
	 Lfm3gMuebGV2354bfLGNVymTUkztK6O0/LUY9tw0WIYFyuRfx/9mySjyRMT4gGrACl
	 85ZtfNlyZtOhVGxtM9fVXNxvuoa7QdNk3IzV8A7oQzxk6phwAovikrRenGjdXonCkV
	 A0h5vMC8YQBlWCVa9JsXolwb/pxXQvgv+6g6Vp1ZvW0+cbWgMv48+TA0LEAaEQvFOl
	 kXgQqsYKekJnBOYFT/FR3/H6bU8BSPwseoGLT3+/D2n7v8bf0+G7shjKQZe/v0agCk
	 6fykflS8qr/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 625ACC4707B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170447029639.28763.15480434466413337328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63284e8ea6c44b7d2e05a6a6e4e3f8abff95e0322e3da5b3628e59771af27ca5
Date: Fri, 05 Jan 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704470296
