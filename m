Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA4D028E8
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2B8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666972254;
	bh=ximPnmnHsBpzMVKYgrLaoQPXSvan/5TNEbVdNlV2PEw=;
	h=To:Subject:From:Date:From;
	b=XOr/dkz0ZTuNYZAIMRZUWdMpq7FTLFJX5P6hoEjOm4qqtA+LazKeqa6HqPQvyme7D
	 8lQ4JaqLBO7UrTn+lXRAu6ANx+v8rRj8ZTi02FKtsBDErH44vseoW5zcMWtazZygig
	 0H3dgNlXYwlYwB8Ou7/SGwaOexavnqivzPUYqRJwtlVHzpRo3EFnxIX8LhJiuH2D9k
	 r6nzlIKAgblv1aYHj6151/Z82YLN2jMU8ILiXKu29Iqq/jEKqY35zFkL74LBRpo9ri
	 bZ3UWdeygcVMdhzsvMcuXcxsvItUV3PX9IPpdZwdXKbNp3PIW9Q95GTzevkfnH2xRn
	 9necWCVx8l2QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F77EFA3742
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166697225431.17143.16186285564771594346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20aeb394ad0e685e9cba1b6c50bffce4ba30914b7a522e1d9a1f14d7913c77c0
Date: Fri, 28 Oct 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666972254
