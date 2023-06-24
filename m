Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3ED46BC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 16:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6122C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687624388;
	bh=Iog86uHlcaJS00hBdtuscWbBq7DCpts3VzUC9LTE0GE=;
	h=To:Subject:From:Date:From;
	b=Zaogs2bmY1p3xdk5AWq3xygWK79jKl4KzJaFQgQB1mNjy61o6UT2EHtLGupiM0ZeO
	 jOJD5SFColI3VfchnMu7rQU2rjMCyaBCZ0nsgCEOuhVHJ5856YZ40l7yz5b7aKXVON
	 cu5UQ2KGetG6nd+Ja87rIit8SgJgBARrJ/Wh6KhxI9SeOQGayioH/i+udN4rxlKGjC
	 fxbyWkyDhwtH3UxqHJEYT6lOKz8OxETah6Cw4q7cSCR/HpWij1xW06wR7HLHB1+d+9
	 uhh5VrDD0iq9QMjn2JTVKYBdftL/V+EO0FdLKsUzn0CEdDYVWAdppIH32C0s2TDuRF
	 mm0Tx8uRi791w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF22EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168762438867.12566.16383838243340335809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3885050bd9baa59e945af51e6f16fd90a67cf968b2aed0b9e306fba8d11b5e7
Date: Sat, 24 Jun 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687624388
