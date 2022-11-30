Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC12C7C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBA5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669779654;
	bh=Nygmfbr9YpzWbSrYvQ1fBvtEzfiTgK9egs8p82DYfXE=;
	h=To:Subject:From:Date:From;
	b=iFgYccBh9Scxo0OiksoJ9ULzVSZryONUI8Y/Oa/E6R7OFhuDoPZ+neeuEgZU6cnQf
	 FwkHZLuIDg0qjxyUsUWFWbyK3zcfWoSFOcd/7Feby26LPGzyPsVcY+0Of664ZrZBBx
	 2DSFb8jqqKFowLQqt00WdKdsDjC0D8LhtY1fWUlr++tJ6pej0FnTNm5cmFeKG1+UW9
	 clHuqSJPPLLrhpgbF5cVW5IA5JJgBgy0OJRwR3dNET1lNV5gZFxszW6LHJStOIEJ88
	 sOiaLwfW0chd+pQqPgWlmbm98OfbR1K4Yq8IacRutsnbFr4Rr5ve7IlpgsjfiKsiJB
	 +92tIWOS0FiiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BE5C352A1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977965434.3297.13549092590322328859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97efdde31c9a6a04e0f5c92c001730b84d68c536cd0066dda8a8b9e2a0cf3db
Date: Wed, 30 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669779654
