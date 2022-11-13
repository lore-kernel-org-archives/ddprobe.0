Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C721D10F7
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 733C6C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668334254;
	bh=qZ9xRNh4i6jtvidaFQWqcKpkl7OfD2c5DYtGkvdyjfA=;
	h=To:Subject:From:Date:From;
	b=CYKyHR/RtgBUdn67GCXY/IYiJwAAgnscpZ+bGhOOfA+DFVJ2UoWup+cPbEllSHaHO
	 YnArpeqDEO95OMgYK+ePsqAngRstuXfuONa9mY/ojI21TGorlRAsbglAO/4XVxXQRH
	 NnXl1Jhmjn+KNvxQJaRtUrRJHo8yh3N0m63QFya3l1Xl85JV+vN1FmEJSZhdLh+gZ9
	 vTmFikSygWWY/4fxF4svu7OMHflXlYNbcKs/oEWFDgQqZeTgsXHiJi7hopLtaiLoHW
	 EplYF8CYbW0iCyzrlP5p3uEOMURcRB7/EQ4K7/E1PSGNBiKpVCAxUHspEtmEmNRInI
	 TOmnAOAF9M6JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DE0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166833425435.14960.8618474189553197451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4f073f222508a4d92d073ff9074c14ceda290f1466438beaa25c42ca533763
Date: Sun, 13 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668334254
