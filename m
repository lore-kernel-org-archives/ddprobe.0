Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED03628
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 03:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC89C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 03:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677467766;
	bh=ZxzfE1fdB/kjTzWpmmRMSlP+23FjqzbiMUnyw2+25HA=;
	h=To:Subject:From:Date:From;
	b=Yrv03jyYqaT0GdTCYn3CNMQ52lUl4lpSkpv597J13Bjv/alEmdAP3QKUU4x51rflr
	 pixQASM+9Cagkl2ZTQZ1PN0ozo4SPYR8oWVq2mx+lJNUhKgHU5cKKuyKmdlpasUHgZ
	 LQtqHWwQLUgMMXXLIJ3TKxXl7vly4P1cC/ESLSQEeROSrYnzXOkR9xcfLTeS8H3QZC
	 DVQqq3bFHtttQktajpfA4afy2xb9ekb4zdZtZXgC8FOP6Dh6OTT7r02bbEbIYHnfac
	 hcbHHuDI6fNBCvbYy3BD+5d/RHa5TfIYSvjxEQEZWNduerjaUPr9E1Olr9va8Q0VpY
	 36z/f7ArVQa/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA31C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 03:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167746776583.14639.7061142333165685589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c709e2511169db87b4e655999d5b06877f9de443b579f08d59b7771145772af
Date: Mon, 27 Feb 2023 03:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677467765
