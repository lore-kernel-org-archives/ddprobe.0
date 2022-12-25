Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7A862F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9120CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671964287;
	bh=fHD9YukFtn6Jp+ibbFBOxS8j+aWj8kSUcMfAhbYJWco=;
	h=To:Subject:From:Date:From;
	b=juaSNWr3bOuagYbteSAjTBGRvTWCsUZP6Cvii8fvJHsDU3ujYb7YWrvmEn/gkVstx
	 WavrKjHqaWZ/6gFLIKfB27yDOVrHLmDDMpCaNBp2XmBBgPJ6+ew+0saOjEEBsWt1uz
	 AdGar8gIH5FyevXP6VGFEp+rlptlQEykB+ZzRN4j1GSLz6Gc5a3bjhpfrKhEd3231j
	 1zxTww7HGle6eVMkpdlwY7ZJofktTsyrGaBCfnvW4JSnR//CAW7JAa+ureJs/CTpd0
	 Tyi25Ikn3JpY3PT1UfhhHFxzDK1SzQsbt0MBOKN3yND9MrIfhiA0oPhsBMFHld9jpA
	 Cn9zAEAUer59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7628AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167196428747.12604.16432399898105736604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2400250c520d4b3aaf60c367a4035f26021f64f21ae0f3721dec7cbfb21bb1
Date: Sun, 25 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671964287
