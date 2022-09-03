Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38D129A9
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D66C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662235253;
	bh=0wd/YVWmEmOJNGRFMW3pyObpMRT25pVqBJbSE8bmc84=;
	h=To:Subject:From:Date:From;
	b=WkA2SuIfWM02+BnG/10nQNGyALTCUkpYt7N/3GfNspu8xKYVEAlbichBE5JeM1hJ8
	 uHdTCJ6e8koauILWG+WqJKmlssnrR2COorT4XV2Alddopf4LjW9BgHcu55uhZs9gTU
	 byyL0fceCtzZVXNU2TSYTFozvI0HLaxrhlHxGPBXCM+HtDQhiV7I7G5Ji8T0kL7Efk
	 yNUNqdrxUo/PM4DbDs4/hvFWCsepHWIyTII76XzdD8nR+StyjIn0z5eFB1N2lUNpCt
	 On82PwQ8UxJ4NWmAfziuHX5sxrWLZ0d2HV2zGJ4o1EVgRL78K7qCAUzJpLaRHevnVQ
	 pd6HpYUICNZ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53361ECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166223525332.20467.3497267300570186426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e8121c40ce19786909d5cd9dba040fe53c26edc0b79f300454f6d8a91d0a7f
Date: Sat, 03 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662235253
