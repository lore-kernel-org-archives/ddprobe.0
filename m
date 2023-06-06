Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738B619915
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 18:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C9BC433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 18:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686074525;
	bh=yoTI3UgbAVr6HIfzOTDZszQhlcT9rGoBszR6nURlVl4=;
	h=To:Subject:From:Date:From;
	b=l7ywMg/po/1dwWrOdjkL3xkdedc7KNNslA0/d0tig4/JoCLxNpgaGhf7tFC+DgRSh
	 PqYGXNKrS5yKXGRmQp02+UU5ZYiqxX9i/KiYV5yuBFy0+9ISlLLbLDyPiAO7U+ODXG
	 vxDgGK2n273lzVA6fY7wOdZpiXSYYgYmSFWy9Tk2JXuhDyWscj8c23AZ1efN/j9OtD
	 nELLVG3WZj3hjg926WaWQ765Bycjf79ZwDLpDdCBGxUZ5Dup2WDhCbC9zCB1OiU6EG
	 YI5mFgInLZRdX7xahcz2b2mXHdtEGiQBhJwsltCYKAmjOrJcfqjLE2jwrJ5VpDcJmA
	 mvnVTcZWPDIBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A13C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 18:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168607452580.27836.8908277744177632582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230638d19ee294ac41f9d8dc4a0ac0ee0b3f34712355da26726af48bb96849a2
Date: Tue, 06 Jun 2023 18:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686074525
