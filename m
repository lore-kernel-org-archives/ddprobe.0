Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F82615480
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWlNoiW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DA8CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699862296;
	bh=LtdEvL1zpJ0/Uts4QXCx2+5wHZAJvNHcOoA+bei0u40=;
	h=To:Subject:From:Date:From;
	b=KWlNoiW25rFiW7oYAaKpN2aSM7iichCLEmMXS2St8QHbOX900Fb/taIZxG4kMkPG5
	 Pga/sWQsZ0SOZJlEMujEhxU87tNwm7ktdhIXgp3tAwJ5M3OY43PelBc3ySp+QpokWG
	 UHkLLkcDbvlOM2rec/Wf+CmUhZmb5ixtFbctiy+OliwChswZL2dXCD2H8KeYzd3+Th
	 FuJ+jE2h9tt53Dx3We+mNBXnOnuQX05ps9LBDUEpTzE4eHueK5ro/vyZsxr7BQP1Bo
	 Rk1UZXcY7aL2z8QKgstNy13trio3eJO3GwGh3tMc+C94L571pQKZvK/kI2QW8SEc2W
	 AaqYps/qVETlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C6A9C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169986229642.5706.8925172628347388264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1552300f4c653867317f882fbd19bc9cb0a0203923cee52c1ed230a278ea3466
Date: Mon, 13 Nov 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699862296
