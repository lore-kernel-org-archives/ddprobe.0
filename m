Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90F02F46
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81687C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673694687;
	bh=ywNEe4DUYRdyQbXYQP6cHbu6HvoC1eLwBtHI9hiI7KA=;
	h=To:Subject:From:Date:From;
	b=awSiHe50Mj3KjKAmzfwj3T266hCAGUcwgSncnVO8q2VDHDZ9ucPr/gfpt29DDglse
	 vFbqOqqLkHiyeOysThEXYmIjuMY0qB5L4va5LuFR7q2S88rYAK5UnfVhIFhZqONVxg
	 TSXcfLvCc8XpyzXcq79mzoxPaLh37cRt8V/zEvWNnHH5hUiZ9MCRYeGGnsSMXBaK8D
	 ODbQtHUAjU7FKEHPEVCcEkZC7Ml8Uc7pnNwJNY3NYBOs9z0FQjWNJ4j7EhTZEUMCj9
	 M3eCw2ag2daj6v6yUULY6VvXHIjR5dkvTC6BeBI15y/q28Z5tT3URRA+8eu1vXiBBy
	 UwA/wYatbsHIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E1BC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167369468740.21789.9309675811783546852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f129df542c4ebd6ef4b7141764d35d15444103f4ca56c39eaedc9fac26f39d41
Date: Sat, 14 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673694687
