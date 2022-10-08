Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81891C33
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69DC1C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665243653;
	bh=kr8qvYNt8fzzfpIoNAX+ZANmyw0tSg1vtOiUvSDMhNc=;
	h=To:Subject:From:Date:From;
	b=mE5qgS3m9EEULZ/QcFXjtV74+4I9pjkYmyOsBgOFnDEq+sHcfO0Kxhflpzfv0e4iO
	 wheDFy5mVMQfcNgNlDLYDT1OK2upBoKeY/mrNqNDWoTTu6mYllq+UqgEYoey9ETAdb
	 oKelseBr8BBywcRb2TrUh+xDxIVol2+1YGWzYaC8FQVQQCP7jhrEl/fbzMGtYXEnVm
	 r8yJy+qoSI/wn3XE7BdXOqqM9Jv2RV+XiB7npUX56K75rh4DwKmXbN8Br8gF+CLR6C
	 CMQnsj43r6BH1Mi2iYAllL+cslrC8w9xGfgXFPNDC3olJ3KtdQa6LcppxMTU9j90KR
	 smJ2Xf/cuSTcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5306DC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166524365333.16104.4219414250437948461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8380666a496b85feb2faa9b5dbdd3dd046098a38b460fda12e0c2bc7c85280
Date: Sat, 08 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665243653
