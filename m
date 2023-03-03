Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC401FB3
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 09:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5549C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 09:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677834365;
	bh=zKie2AhS8W6JrtROD28ZCuC5m5UlZSZcdYTsnnq8BGQ=;
	h=To:Subject:From:Date:From;
	b=HHN2iCj259VFkQ/+XA5TmxoRxTrnKq7Ppr2/971MvGYtfnvSWlkMvzX06tfSjAYe9
	 B5ndIbrZ4vNnl0+lmVfhalN7rkV77ncD3BrxDADGjNdm1QIrOgd3esrwoWk61H8MUG
	 sVvqJYXtqHnwzLZM8KOl47xecxUpXrA9olKdkT7DlKwTX98zOxBLzyNITolTd5MeVd
	 IzRGVjBRSLSgry+vctGNGLKms3s06UVZrpKm5WVG+ypvdD6lSIzZ1E8z+5ocm4eEZ9
	 aRDfw68pgAoNyECJuk4F0BnhHi+XsYtDnEVKTd5yyII7zrDrY2rZhIGvJWWNV44DmP
	 tQ9c0J4VbmgbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF68DC64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 09:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167783436577.13797.10572253561206210147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b712436e3ef73aa2cabd2cbd61e009cca4de0212d49322896d73cd7bb8830c10
Date: Fri, 03 Mar 2023 09:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677834365
