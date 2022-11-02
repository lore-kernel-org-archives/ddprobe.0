Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B16207C
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB6AC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667371854;
	bh=yRDFL74VNcl4euiVn9JH382dH5CTWQCE+828Uq3IZDs=;
	h=To:Subject:From:Date:From;
	b=py66n4eWKxJga8qIDH4px52wPIQBZqBnljTGzJvCewNw0+ne/pvodWLD29PqxYrvW
	 A8AYm/18cXtwuEFanoLv/S4QCZxG/RezTGSwZZFdvTPnGXdQWBDxpC9rEnlGaR7CwV
	 ilFJD2keJhWfncpMgsz85diDmJbwDC6pg44PdrYr2cvCdb/MFSkg+LtNZufiwHZZtH
	 joqaLPO5CBqFClZZ1vE/Ee+Wsb2TZceOc3URL/obCdqCn0hVoKY5jmx3mORuY9Fg14
	 3ZZNFl5iHbyE6KdiWGPRhHHb2DCzPfJA4zU5ad6OBAi7ODiRKelbw+Psg0k2mN7bze
	 /1teSbK8hEBKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5423EC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166737185433.14339.11112447638025711682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceac510f6c8b6f7435352944b014af067e99306e4691bd696a71d7683ca2aab2
Date: Wed, 02 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667371854
