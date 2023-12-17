Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0882748CDD
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VN8c9DyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF34C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702834096;
	bh=rP7D/akbLK0Rgw61T7QwO0gbo4Voi4eUTym3FwHUBsw=;
	h=To:Subject:From:Date:From;
	b=VN8c9DyNWHiUsdVzBPWdOQHgmlvBp/7X6zoIVAjX4xQQUAcji2RJ34TILnc3Ysr++
	 ZuGG+f6KW2mdkz0j5ylGVy46b7HpDyUaIu4twhZn0vElMhP3baIqDBNaxXGvVsre4m
	 XtCUNbiwKQWn9JXxs5v66LUXkNtvljsnERpFlZojh9PkBvXlEcw5urck65YpQsxTX3
	 mTCM/I3gV6cldXZ7gXdEPwgfKLhhN3Grt5OTFi+ikUZnrYfX+EOEohWzySLxn3EFm0
	 UKB6W7jdHwEx1vsqYD1RjNcGM0HEPFBzCmZMtBnvBmIEb81bSVtE+Am+dM4mZwDpCQ
	 aoodS9sjsttlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614D3C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170283409639.23650.650220145638500220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0850180df93227f4e59208261f900e941af4e33fadd236ffa48aee89628dcaa
Date: Sun, 17 Dec 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702834096
