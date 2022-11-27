Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00E87E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E8EC433D7
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669517454;
	bh=sWkUU0/GJ+VThlZlul121f8iS7z2FE2YnnUXwxt70fY=;
	h=To:Subject:From:Date:From;
	b=GQFyZAzIT8VaHvIfvHBpBIKgDb4UoN7zsmmCNhC9gYMtF/5+215VUew5yhDqi/tl8
	 zgUr07PZvpVSOH8g5Z17IF6KqZFzgTn5srhMlDvaJ4vdLwm8+7wkELLDbCQMh/DTr6
	 Va6V4ROQPsjZKQnJFluZ1Ojib5EkfBfSGjIG76D8ZLrdFEM9gZwk4eWsJ5BwpQfV4T
	 3rgNCgtqFZnws517iWwi1kL20aPd+6gl+rofZqAzVppai5WKjJwJBxh3mXQ/baWF5w
	 swgN+dQsQVnr2bpvOWbb5vZI7Esq7tPzHAv53kXJJNV64VqgHRzrzCLg/ZDUuTql5p
	 KsQa6NNLLnkrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EAFC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951745432.6903.13234246793336671556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00aadc52bafa049f75256696cb1704515f72f30254259706038c48863f1cb49
Date: Sun, 27 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669517454
