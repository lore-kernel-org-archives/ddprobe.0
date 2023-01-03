Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AA41FA4
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0E5C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672735887;
	bh=iJP60au49uUhizQqm0JlSRTCMP/GPUSkkVPeXzprNNU=;
	h=To:Subject:From:Date:From;
	b=ggs889BukKld9JP3CVcGVc7KxXU+rzcCFhl4NqiWxhQO+UUm65GRy4Xy1V8sf6CY0
	 HMO43Ux/IKZ0AfeQVtpOPxYm8w8iaiY5MruS35596Zny4W1an807nov00t1MWAeNNT
	 +PBuSgKwONfhq5oI6Kw4lXfJqx1SBl5iFuBEjYA50n5W/Um1SxODvnmkUYrU2ZiEAz
	 3Vw3isxBYAIoXyDBY/cnXgclGAvo2qFrnGF5DAFWmITqmQt/oeJkZHulfGuDbssT3G
	 8p7e6JEQnD6mwudXE2+HUcnWsV4FoptO3uibcMXDnEL0fK+omdAu4nIOPj/mODCqzn
	 rKV09tYn46hUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F091C46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273588738.21002.5884458720779547641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb8bb5ddb429e5c107d3d278a09f4f130778959e264616503408c07ca75cefc
Date: Tue, 03 Jan 2023 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672735887
