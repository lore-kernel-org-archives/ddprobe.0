Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF4217ED
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 03:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1262C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 03:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681961765;
	bh=BwSmfsHNhMCgA4PC2KSSBwBZQcOZuaKIY8l6pyFaH8k=;
	h=To:Subject:From:Date:From;
	b=gtXfUhbC7SO8uz5scXr8lDIFvqX45VsIRtHpaV0hOhBCmZQYpHA58ifrgANx7yJvo
	 yEpdUd4D/nDPrPM0PEUwCZN5JOd/X6CCEnYUnXtgg7p/1Tg/yKb5lnTBVw7cezxznK
	 CQeMPHZzmezTORvSIVcX/aCWoTygp26EXrmNpihNhgfzgbNwB9bQwHTMOrJQGLLWbf
	 ynNhQanpDnN20gXiE/Htz4tslZ4p1Jqug8AwxHIx8m0/BbdTQR+6m1ySq0IrYF0Pr3
	 BSr7N9XSFu8akPfutVuWPqXsOrD6CiDuuTkI0Q3HE7kmPQVYXT7tcTxoGGY7kdYDzd
	 nRlQSOJToP86w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6497C77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 03:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168196176573.2161.14886599547177109589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04774d6130ad5618f54a90d6a9f468d6becbc51973036bed7c3468ded2c883af
Date: Thu, 20 Apr 2023 03:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681961765
