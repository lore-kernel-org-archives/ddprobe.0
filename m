Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605C814A86
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 15:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DABC433C9
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 15:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689781268;
	bh=pljLgeCKVFKrokV4wphCIXu8CMKPLuKEMI2/VD/ojpE=;
	h=To:Subject:From:Date:From;
	b=IG6cjDsc9nHjyGKyNQciS3DK2i5ON5jhrQWSV/ykziaPNJAUN7JOSq7qLeUzR4/8M
	 P2A0f5QGCPYfEQm9yLC+UO/eOdPKiAt2XYaGsgjmsLxEJCiQu/O/sNHa7upKWP1Z5o
	 gTfuE+SZZlTQYkWZNR84PbDbNgpvjusxyjw+fN7or0E9gLl3cz5jU6M0Bm2BanYTwi
	 fT+ZL18VQvXWzaSEELm6OhBagfNnCCcMbDlwrl8ScP78wpx3Fo0go2e0MaduVZfdCl
	 I7ypE4okwdTOabGspWFoEcwCO/eFTTP54AjgAcfb0gyGonVgcloDVfAkz36m2tPTs7
	 gber0Oemc0nUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B695FC0015E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 15:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168978126873.30291.1601811727641268836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346c84d598c8e3e4448398401809d126a1e98fca9c9a2b767aff33dc09f10110
Date: Wed, 19 Jul 2023 15:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689781268
