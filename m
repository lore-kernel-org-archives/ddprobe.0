Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F017F7B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97343C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673902287;
	bh=HfiAb/hiZ64r5eIXzbkp7PbIAqmhq60kTzawyeZBie8=;
	h=To:Subject:From:Date:From;
	b=TsM64lmni9LO+3vGV2phj1rQa3ZnT14y7dEX48vwusKo7ehEOIBNb+H9s5XkID8ZL
	 xcca1x1hsLgnQ1VsmwGMrqtjHrNy3CNMnpRiaSTWJqGWvlehDt6Jg90s01QfBEeqz6
	 iIbPYgaAvCki5ZhsOb5rpxc8Dc9lfjj2ydhxz8pGPH7kMJkhpB6pssxnB8YetLEFWn
	 mtnRrhlnlIR6fDFobY6CO3Ctw/mR1e9OnAVYBrU62Rw3A6bckSxxVq383tuOWfcNgP
	 icPfgo6z2cmFKqV1bfk8Vgy4SelY2n61k0D+Y/N0v52sK4e4oQi6ss7s0IpbhbRnft
	 qGoxQUrs1TD6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73CDAC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390228746.425.10873256809918326559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d61143972178cf2a2ac4181a2d953c40fefd62881c605cda116b43a285f7a45
Date: Mon, 16 Jan 2023 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673902287
