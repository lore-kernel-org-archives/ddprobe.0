Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2A32C80
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F35C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663316453;
	bh=YUP+gknfzGa+aXu0IRLk+D28DzAcrPjHaaA5Oi3i8Ck=;
	h=To:Subject:From:Date:From;
	b=mFGq0BbCNAu45kaweeWPLtGl/Mt5BktVI29GptY7ZNi8SxwzMRMeYVx6tGPN8A1fN
	 gQABzrjsMyGxIOLblHvNFDbBfDlRPs/yE3Ty3VE0TEEPvgfZtbpKZJpgbtBZ7cpk/a
	 M9YtSpy+c2dKKmmfOdC7pCW/OExYtNtNsj6WNQ7efB1J4xoB117Y5WJYnWVv2pdwJt
	 n8mOew5gVEs2hfhXWFs1RkA516jwmpkySfdkv90w0VE532Y/u1r1Q+QRE35IjHFSmI
	 jFuBdyoLx/4RTGmTfQsfiXjjo+HJavi8ZePysV7xahlwHW2w8qLknHD4L6cP2qcGq+
	 MdgVRBZKLKUzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B41C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166331645335.22736.200591348531019911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e203a5d8151e53be253626a5f265df8381a40a991454530e3c4ffd596d9a89
Date: Fri, 16 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663316453
