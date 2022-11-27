Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36FF28E1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF83C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669551654;
	bh=+j4n1BUjFoWpryLmZkae69ddvyyFtvNj5PCjMbzBumU=;
	h=To:Subject:From:Date:From;
	b=AfmwhZDsz3qQG1TvGQlOfAqcNTPJa63V3+LCnU2ttERAWoYSx5psdlQ+U0+0s8bjX
	 kHwRDfufQXUesMoyg8QOBMpGoSPkDDAlm7ksmoAY3MZg1DQgXv5jRwzRNwjeHdVOWJ
	 khkG/VUnvsfxrxJR+LD3Q6hFQdu51aKtaTmolbjt9/leB3osu+DK9LVxmPCHEu/mWF
	 8zct/fYimaHuabCRIZO2rk3WKQ40fRKFOsWLabO/8PWV/s8SHvlxG9ishQ/6j182Ce
	 P3xup5DP8nVBqjTPzHhy/eNkX5kP/XXae8pvc+lZAJzSZFFrcOeentYTbuY6fxAi3A
	 IgUA/i/JDrI4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5722AC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955165434.4688.9019536256125928802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707bca33f44171630d0b5e115fbbb2019cef01aae320af43b853eff05ef85314
Date: Sun, 27 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669551654
