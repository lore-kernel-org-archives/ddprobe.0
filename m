Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BF147F53
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyVFlapO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94D95C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703708896;
	bh=ufIdXe1StzVUHXoFKC8g4FTkVH4D12uNCn4FwoTcUGg=;
	h=To:Subject:From:Date:From;
	b=ZyVFlapOuEGLJozzmFL/Ln6cp5AjKkQv5gKGFN8tyEZN1FEKJZys0wXZFcUXmwDlg
	 1WuzxXzTzwV6rLC7r4EDykw4ARW/ba6oYWMhMrFRPu9lRCICDx/ErTYEAboHTaG5nr
	 Ngm0RWFwuZJxfyA2bK5mtpxILL1y8i3bG4J1dfbu+29bM/I+6CIkyaGh/n2Vb1RP5+
	 u0QcR786Oe58QVah9mIG5zrdc35MBEoWdiMenmPwq5uHNlLMEE4UL6dOcFN7wTN0jV
	 a/+QtxoWo9q/M73xtWyvzuRRe4KCnk1hMiO4wJOjM3riYIUMwDKQew2rQh4ZbNNQy9
	 lZ0HnMwH+yuEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7641CC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170370889640.19165.7644548417441869771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aca74b6277b9a198f7bcc362ed27564d7614a54ead5227242861d1930cef79b
Date: Wed, 27 Dec 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703708896
