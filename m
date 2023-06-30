Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2981FB8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D830FC433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688115788;
	bh=tJYWl8bp1hswyrrFual/OnCIX6UT7ocE+J2kxKTf2wo=;
	h=To:Subject:From:Date:From;
	b=sNRHWf1Y5ugolYHcFe8IdlgWCYvxSmr3usbBSwnuNYwE8Kk2GWtT9KxeemphxdiJb
	 Hb2Ooe3TzoxZNrjPNin0PH/Ii8e7iV+/wn6T/OKAkjubs/8NgVti3Gdiv9NVimHgXo
	 Z5LYnTHWIi8+tGy9J/U2QzoK03ZhXtJxVSLnZV3Ky1JuDkkcTQYpwMklw05t3owcO7
	 BApoiHAB5wTBdOSUQnMMOtxRPXYJeOEHa1uVn7jKSnI50msqQRSyvoqXxMRpLDrtYE
	 AtiOQlI6tTc/weCKxB2YAfQcNjiILBzAsynDq/pJUs58GNA9jrIM+ZRJWzdp/N18VR
	 9tGo8F1NrFwsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EFBEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168811578873.13468.12056424614192938787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481f16185c2e380773662c1fdd25def861018ec9213088235cd89f6361121728
Date: Fri, 30 Jun 2023 09:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688115788
