Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A364AECB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDDDC433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686951548;
	bh=8J62IxWSmyQOzprPc5g1qM2pfbjo0WNmn9ur+6Vm2hE=;
	h=To:Subject:From:Date:From;
	b=aabtFAdS09Y1G/9sSiF/OytDD/TvrAtBt7lHSCEbdncAMSeNEq03Xh6+ogqPoyOen
	 ValRy4CdOyd/W2y+3n0uA8tlaS2sUgorFuaKVRP0QYolGkc0lbOuqXgMME7ia345fu
	 uBS9NIjIkv7jEQgKvjhIEhwUiL1wkym1pKU19Qr/3XpY5Fql29Sao/DkgqNpJNfjhZ
	 PKoz5isSapK6tfDVa1/QEllDpWeexu5hdwt5BhxmBuhCYiqdUbQ0dZvVxz2irRxw5c
	 IpVT4+XPTL96m91KvuxuPYSS2IWaweDJH9rMyoE32L9iIRAW/3OmIQjoDBTCCHAhVu
	 vQecim9XhIqOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EA6EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 21:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168695154868.27623.10273715712710118509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2b319716e006f30d4ade1f2d573403fbdb8989a9e1e5ceb05d4cfbe88ed015
Date: Fri, 16 Jun 2023 21:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686951548
