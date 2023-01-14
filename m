Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67E163D0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA43C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673710287;
	bh=uUkO1jkNTK3vEqd4r++bztv9nf5clD53vWrpq7j3xzo=;
	h=To:Subject:From:Date:From;
	b=JF+9FhgIU2BG1IHkHLNZv924MHwiU5MFRp2a0/rMttE0kMK6tMRqS5XZVKXeCw55I
	 Jfuic9MUFW44L07D4Xt7WDHlTp0wxDkyES4qcuo9IOrdvQ/bp4PJ8bARlWpSfCAXnC
	 3rmpgl+mD+taVVsnHS8bOi+ZbAPTa2WYS3wzhh/aQDg3+ts07beDsR+i4eluilnpk5
	 WLaH58bGMY3zxE2UI6Tl22R9vADa92TWkN3HeLAUfab8ETgAbBOMUICakCsiOvHysC
	 yUhTCEQmIkX5lrPV/7ZCdYIfOQDGmeIk2Fqb5gf/1TfMZ2F5hhpP0alOjdbkr8qQrE
	 maC64uaScEpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 625CBC46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371028739.12493.10929110077608997634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f9629ee39f2b4a580ba96b14f9323bfe771a0b980bd69167b2c51851bcc2a1
Date: Sat, 14 Jan 2023 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673710287
