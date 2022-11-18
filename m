Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58D67C
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 713CCC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668753654;
	bh=bmODiWKwyiE5oJrSKT3T/b9qUNmevR0CkX4sby5bMzc=;
	h=To:Subject:From:Date:From;
	b=EXh0fFfBJW9FhxgpmnY6bTgYPpV/L4WlUmRl16y4bh7/H+UWF+Aj8KKaUd43VXj0z
	 1SJ4KcOAvsvtX0qvsw9i97RXecP82LxU2ZU7pymBUmFNeF+kh04lnw2NfmvRZk7ITq
	 yObs978+ptOC2IwalemvAaswGkRduw73F2pyEBz2UZg+T7oyB+iO/+UZxlvc9I9XZI
	 gnM0FLxCUtVqfiKxsCcA6SgmEI6v3297hvleAbF8IwDgG3WkD3Wavi53t0GX3GbKJv
	 ijmd0YDgjMqAtz/qm0uD8csjTTaBfKFUymCPV5KStFPNpGLggzyIqAHSZvtXwWcCln
	 sRuAYfJ2gaMpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584C1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875365435.4582.6844932395133828976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a430275a04b38155e4cafb28519f59992bba28e818fa916943c5170e6ba1600
Date: Fri, 18 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668753654
