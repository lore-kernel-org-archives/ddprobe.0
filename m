Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F257C
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 712C6C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668755454;
	bh=BikeesuZ413Fn+yDuUJVRN71R7YpIQo0bokVGMAnJmo=;
	h=To:Subject:From:Date:From;
	b=N8lQ4TWnTkVwUO+ty38z6g9meLWwYXV1yUeJEQxyFsCxKbPivxXdzfNdSSGQyNQTI
	 M73GrSimhEhS8O55zOt/iSbsqCIOGGoxWj+jmoLnNaaxeqQ2P8TbTV+V2KMqSV9GuG
	 /skGXIK4lcCgskB+H+EHWgwYtSoKdAYQN1c6UGtIN7JlNuOkadP5G6uzvQRsuxZ8LC
	 W4tZeaApxMoPxH+S/wGeQXQy8vdMer5xZ6sQGAT9lImUvJ8LiaO0ASZaEj2f766dqE
	 tpUVZbz25TWv2e3nY+AreQY4bt8gmK+pSTjOaIQjCCfO08me7FDnskMVV8bdWGHnI+
	 X78NRyh3vcpxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A20C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875545433.20928.1976721527957027450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604a0a97ad1121e8186285aa7bb4955bd4db3e5000fbe493f81edd96fb694423
Date: Fri, 18 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668755454
