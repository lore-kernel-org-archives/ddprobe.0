Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041B92D043
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBbG5wCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 716C7C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701864496;
	bh=GwD7HDXCqI+JwKHLklwO49gZNcPr0a/rrsQ6jjymrAM=;
	h=To:Subject:From:Date:From;
	b=uBbG5wCb4mkVJKlXHYDhNv9NZDWBg1p4H/oPutSosB4MOlqcJRu+VLvPISCEa3Y/U
	 VNU9DgbmyEn6evbjckb6UBbnl9lj4GZ3SJf4Phjm+RGTQ0rbIDdTXRjAbsk71XTiNG
	 HZ0bzliq/5M3B+lnnuWohVTmt2qMRGMojrKK9FZ4y/DAMAY0dMBgWdBs+Hta6dyHO5
	 yQVIkz2/MC95BbbX4VM2FuVuK80/OANqss6H+J1btDvHf/wUDxVYw3V+nLbFosafaq
	 iI/g+iNtpde7N8aJwudxQ5pfNJIlP17b+stm7alyz7zI3AXf8cnUGsj9ffuKKfio0O
	 Xb4SCVKCneP/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB3AC4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170186449637.3891.10102931130244898220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c99f44dba227283fc99355a504b9b2ddc34c8c0041508c580476ce7692d750
Date: Wed, 06 Dec 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701864496
