Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A4523C5
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 15:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC745C4339C
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 15:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681055465;
	bh=cnjcsYyiqTg6eRF+GBMoSRz03XssyM6Hxn12BSK251w=;
	h=To:Subject:From:Date:From;
	b=S2ptH5E4ETaj7fnELaqWMCOZtcVpzz098lLHdcTub05osxl5g2shkX06V8ydsEeGk
	 j+6BdhaOMauSchxEQoNL8/+VZ2Xg8bnISdJiF0QpyXqGzEv/LXAfgK/ORsQ+u0dd3+
	 ZN0lpsM0w19eEgTOeT5LH3wiMeXvaeqYZjkF/SHL3wfoTR+vIEVL+NXLGF+5N7Bdch
	 VbWc+Xqk2ZweGSV8R0ImmQAeYriHntFCUnVb4N/dkUsSgfgrzSzj89xzEhSunJACLv
	 LzlAMH+Z9empcm8xZKmo2AGiYAGAwAPSEIQPVUXoYQlVRCmWXaZnoM1Q1o62PISZRT
	 +Ta51HNceempg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0135C77B6E
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 15:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168105546574.2230.9425865767272129774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b3f9ab57a6d33f02c9d8e4051181a47cbd503afd4f14bd9058653e55ed43e5e
Date: Sun, 09 Apr 2023 15:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681055465
