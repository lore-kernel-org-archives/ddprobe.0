Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53A53214
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F566C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669764654;
	bh=lqO7gXaPOfeVVWfX1HJqPKUAxxsiAq4CWwFJ/Tp34kc=;
	h=To:Subject:From:Date:From;
	b=ceJag/pW9+OdVwvnsaV2sZPdFWqlj7qsqpUbzR62OUcOUUH4zlfTlzFUrfrsExPyf
	 d/RMY7TJD4FYpFB5e6cx9dYZARriY+sbQHlGi6K7jvQtzCRPc/UVFFNLV3INIYSEkv
	 zd+XbSwTuM1JCBk0/lgZTA3GpxXYOrwKtfj1cGhgyww2FKXDs6l/sPN9tdiqWsNXYB
	 8TJ02DyFb1o2QTDxeVCGyR7zruI9YfK/Sl/IwMMKS494eQwFU5nZZdtnr63rLBJj43
	 kgSBv5zRlyjZFslIx45Lxp3ZyHScJ64ry0MO7fUmmMavv9wl4pffZyXTyNNaeveNrE
	 wH+11tlrx5L9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CEFC433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976465434.14350.2472141931479960482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beca84e5c892e445c312f354110222934b17ce4b4e981101b994b6f235ceeac9
Date: Tue, 29 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669764654
