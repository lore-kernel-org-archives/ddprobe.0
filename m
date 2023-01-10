Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D116D199
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAD4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673339487;
	bh=vQZLIcplreTfhG0gk5jrxa5GxX0PzcnDl3SEVtaDPWk=;
	h=To:Subject:From:Date:From;
	b=EaVmpZTA4LJYgM9FxBp6SOCUaSN02x5fsN1+hvjMXjKY0IlNKHmdk0zhNwKcWGm7w
	 zweYChpFX0jrAe1YYEggZ1bBllgw01r2NgjQ3FDaqK4xl51rcqLmWW4Xhk1WP958Ty
	 +YSCMQq5HTH3tDCxr2d9Ay3/76WU5M/s/vAvf+H92egHD+IYeBTcC4VWkxdr1tNnOZ
	 QUC86ENReRrkq/UBmL0EUr00sUMdCqC4Xl5mc4M4WRYfHn0GK/BMK3aWm0zvNs1cNj
	 O9lsAdKb1iF4FX3kVCL6lg/FVKBTI7eq8Bafr2cjfmMzFrvmx32Eeyq4LOPztEhCJl
	 H0BXzsCYOHVaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64459C54EBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167333948740.13249.2102024399088978678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f959835b183741bd02dcc315c7e9f1cdd4e397565045aa54f618da220b97532b
Date: Tue, 10 Jan 2023 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673339487
