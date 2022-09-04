Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D757E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6584BC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662309053;
	bh=3L+4YkkmMexxDLOP4WUhFXfZHSI52gWPySz0p6IjZPs=;
	h=To:Subject:From:Date:From;
	b=cf6dHuyxsi939kn70UnoC7KnqTKDnOGOBMlWcAc5J062qYHf3YVVF2hfWZaTVcv/U
	 Ckt/HXL7hmUFWG/CZ0kvDbUyc15qzxvUlm530DlmJ6aikh+N0FNnfXXxO/4C4icLC9
	 dE9jjVI2PGZiUeMNtP61FdUSS0qmXiMriumggD59yX2SYBoG23EWEQ6FXgxSArZ+bv
	 k13q2zEkkJJ3bw4vmhtaqolrzKC88pMenTvFj12qETpyxwYYNbLl8Dd/0lAN0cHQOz
	 Yjz4hq0lwXUjbR3RP/jct7ZWYh0RBl0mmEDmSDeYvHoAYRUF+sBBBGKe8lBJxKruY9
	 qBeQGsUaLL/qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F66EC6FA82
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166230905331.5563.7682827795391650783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11fe24116fb1ab52c68568520b85483d813abd095b861184a0ee283c6a49ae32
Date: Sun, 04 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662309053
