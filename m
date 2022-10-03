Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D839E28E1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A329C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664826653;
	bh=NYGEwKZLXLfel9FJ2dwEt6JCe+AOskRDv4Hz9xg4BeM=;
	h=To:Subject:From:Date:From;
	b=P2UmfNB9W8slfbCApkG6adDoqN3qm23ygr7jKhxLCXBPhhF2WfF7BMRMFbwf2wLhX
	 67Zmec0DiTPjbyAikr84D1cwx1C1XVfYig2Ug3gJrVR87Tt0RTROKt75+MibjZ7VKF
	 sev6cgHck4zvZIQ/24bcL5SO1eQ0+K8Kf2fzTgAMEPrz7UIbqKpzfrELnxwvfefa3L
	 +BvG6szbe0Avp91XQWwvjGGNFcu1JobHgtcM5d4GqEUSN/Uyz8rWOo9wKdz63Ng4mT
	 ENFHDmB+QnR2QV6WSGQeBPuhzm/oftIPW6KBjGlPm68ZDsC6lT3K0/kz0rN/ptewk+
	 vljbbG/5vcM0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71B57C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166482665345.1117.12173274991072577738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2987cd7dfbd8c3311dff1a8fae282708030dbf6d2b7385c4d1dcd91183ea520a
Date: Mon, 03 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664826653
