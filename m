Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0597C
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 01:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A897C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 01:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680399906;
	bh=XHF2+Fiu4KhyyY8feELrrUdzjSvTyMOmM6oBgZxGlVE=;
	h=To:Subject:From:Date:From;
	b=MFVNvmloMCVKps0EAhJYFyk2bny7Z2gqnlWMujZrXQvEKYa6ZYnvVpkwyVbNDU4xS
	 4V8B73RYb7BbOKbeRNmrvVGrPNLRgSsaFMcZCJuqs5DXm4tTtGp885W6SpRwVhI0d0
	 lkOMyjkmySfTtjhJyAnb/Nb6m5VgF/q/o2Uwtzny5FvMnVLU6v060P7Eu6j8s4hpiM
	 FFae7NrFyDwYHefPVMeIv2oR0m2ArUbmJtSbs8dCom/WMJwfMa/ofSxEhBquZV9V6R
	 qOQ6zkGYFh5QnsYiX9/JtMamLspLG+hxQRjWAx2kwBaaDKeAWjCdM2YFX1yfcC+q2F
	 h5ul0AWu+eg4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8263C6FD1D
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 01:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168039990582.4529.5603015718715987368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb7fee7b6ebdfbca37e1515d49f991ccc9e4603d0d3eaf9cee56dc5fc6afea0
Date: Sun, 02 Apr 2023 01:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680399905
