Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605FB37C
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 06:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB043C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 06:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693031648;
	bh=506M9m/Va3td4biC94Yl63JqbzVlHdt8e0WRaPapAew=;
	h=To:Subject:From:Date:From;
	b=C50ZcSbl+vc8JR/XEpxTm5EFPj2ZxX+4u0+Um0ZtiCTAdzOjGVkq7/ceOsgmuAClx
	 suEgJO5WpZFj8f267qANHjc2jyLZ11k3+FMUq0rknl+6Z4VZOh3uphnqWVhUnT69E5
	 bgvi5OADiSRiMhwib27tzU5HMLb9S2obBD6YfWw6Onpof/3Yt04/pqR4IChCaBY9Qr
	 DdDbGgFcaIULN06l5JYMpyQxwWDF3bFOonYeEIDXtpOKu0DRLpDL6JE1HAYcYUFwer
	 sGIS8HH+K3uz6/BcEjNVXozy9pSxFkZ48ms4NUDpJeez+ylt35JwoBV7Cjpoiesl1E
	 ejS0bjrxUWtFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE272C83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 06:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169303164870.15023.3577766678779072104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d4a2eb678c00ea9e2fa96e035f48a7d3fcc216d8b6b0b684506c5cebdd935f
Date: Sat, 26 Aug 2023 06:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693031648
