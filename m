Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FEF33CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B986C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665424253;
	bh=lwFfoJkZDMxmRiPWFrOl15eHo1HONJUkJQbrfC9OL6w=;
	h=To:Subject:From:Date:From;
	b=i7Yl1nwLqcBQnBokEiN932B9GVACP+vfPYdYORje8oPhppV5HwkPx4ZrdeZyuCf+W
	 bU7eAFMGhlW27QYf0k870FGHneiB0RJOletgiwZaVPljw4HXtN4p9r5n0Mk2ru2Yo+
	 +joNWAb8G2dhB59B+wHAURsCyMrtWRvf+8sIpaoaaxuOOshC7M9OGadzbU+Ha3QXUe
	 xq/gZKc24WbKIKsaEgXkPKFLkOMiylYSdEfmrnxJWM3QG0HVbP5VqcJGJtgehlDofP
	 30277WoUqPO32/WmPX8fdE+dmsaDnDvCoM8TvhbIraLGr6y9PTeRMApxk0M9oeFC23
	 pvxhDrjkNhRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E87C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542425333.14272.8901874750655355479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff61fff6befe27b3d6cfc5119a972354c41cf20d2187e47fb61997910ffafb9
Date: Mon, 10 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665424253
