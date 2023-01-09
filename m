Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50E615A9
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8312EC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673240487;
	bh=CK7B2IkHnC4fmvjMxHMBcrTWXMzOp5j6DrCRHonnqVM=;
	h=To:Subject:From:Date:From;
	b=c8idUPUWKZT+SiSDxkNipoSwgIxGHEYdT0PmZsNLA3qXLqUbgbI7oBYGj/90oNjjZ
	 Ei7HS+UpOD0o4Grxo7ZNgABhdik1sv1+YAWwKGd/qAQCCMMPiuf4wTcOgJ1PLUsKK2
	 Ol2INQ1J/Nbqtq26I3dpPvJRYhs10+LfuYk4lhFdSAhpBoRKaMhTQkEq48FSdXCVzN
	 dKwRDiI/+RS4zpWG9AvT6Q1qiL+PzT34VvldmScx/HLMiAQalsGPHaoWlxb/PUAAio
	 beiHIsJeXvbn557MgZakPw5yIvtDOmIslC25Pe1PCWvXWbvbN7ObDI8vR+JzYI71fl
	 ydNGkL2p20YEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6954FC54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167324048739.14521.13525614154972436306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11cc94f5f42536fc2412c2393257b856632657463480abc4092cc213925beb3c
Date: Mon, 09 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673240487
