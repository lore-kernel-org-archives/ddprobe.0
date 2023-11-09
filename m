Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A7432C6E
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ta11gmAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90D0C433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699557496;
	bh=azl7qbaFcIdu5aI2/zrDqfwYY0qGRIvqi+LujpgQ03E=;
	h=To:Subject:From:Date:From;
	b=ta11gmArs+iXebFosiY3GFTW9lmi2u/zGQHkRok8zN0wdsrRg/vlonsQ+e4FJTUKy
	 0pcw3bsSXFZ69t4b3gu8mAzYsCA8HfgXg4BTTyMoGwVEJNUZxmZ22rdQiSA8AX2j6t
	 ce0XA8ZZmfF+CPvy/q9AFiozjbyv9lTcLiA+0jUqtce1mIUqvF/hDVDpt4pkW4R4vc
	 Ud26rH9jmoill9h37ZN5/pQTWBui5EOJW5UwRHu8G4YpHtOYuR+YJU7WWJIizrH4HS
	 XYNybUlFDn8niTO+LaxI1SYQ0r7v06wmmi98l0BjegXIM0L0t/g8GD+/CjyMYSRQK2
	 x6gZ3qCk7lXDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84CD4C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169955749652.5672.14277066338403419732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585e144c427312168c12f3890be8da01b8af6b55fb4330146ca78879bfd4a80b
Date: Thu, 09 Nov 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699557496
