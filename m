Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB111525D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D8FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673324487;
	bh=D6nZRZyDIBll1cmcqjPg5xGzjb6vdQPIfXlfhSqjQIQ=;
	h=To:Subject:From:Date:From;
	b=hYee2Gn+P1v6Bug21CwoDIJAv2FF3PlmEnDBBZsjKMBX7Le4Tbvd/UFzx+VIdDLEo
	 hJ/ShKcAJPffrtCQVEWzDzSnRYOqK9fjPCIjMOsHwRfvW4Rv4SYwV/7+yZLfdU7nkM
	 vBos2dLyUqXw2xj8efm6pd2olHNDmms1B4RJe6qHiiIhUZ2k/r2ic0XorF4ZhJfg1P
	 9h7XmYYYK2e4dPxeab87+pr1EmX8MmpYrxOAjrACsDCh43nETmHLrGcEFEdweN3XM+
	 9hgKaxFovmuy/Z332ujLe/yNZYWZ/wtx9nWxEpGI+cq3aIDxaBDycmyundLZYEJyih
	 fZi/LBTtyFsJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68995C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167332448742.1986.2032201630639497600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9c16fad67b06e3e7b6b91cb685c2d71fb92afabd68c31102cf67a8e338ac29
Date: Tue, 10 Jan 2023 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673324487
