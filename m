Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531BD360
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 09:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6BB7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 09:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682759705;
	bh=hhM2KUk+geTe5pEE8McOpov+ycXipJqYnOkJdZXGQpY=;
	h=To:Subject:From:Date:From;
	b=BHE4pruyO9wGEMYKxlrTECy9kdGT0o9UkIVwNUt1n7mpfpUB1nZzH7AK19vma+Mzh
	 7zOkiEjnFEXOxGN3zrVwJ0nEG/+9cYicdf3+LEMk0JDBwnhibfO9ClSsxxIPqfHnIK
	 rtbUn/xzI9HhAn20TXg8b2kP/lvtomxMicOB96nvwZ4YHrGev3Rds+AcKcHH5Hkw0J
	 U19LvE+mxDJZRtzbqokSQheAIylqe4EQOE8lijXltF4uswStuJMDYUDJ2hvnF/cZ6w
	 eJoLfRe8xQav7nzRIZIGGLlmVnnvEE516xvCSk5kK6BSzMXdswv+RP9KNckrdYfWHF
	 q4tNCa8RN7dEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19FAC77B7E
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 09:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168275970577.9238.5293601361347331096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ff63b62a13f7833a4e010deafd89e063452531ecfbc7fbd261c38316f184ca
Date: Sat, 29 Apr 2023 09:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682759705
