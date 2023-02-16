Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D4817D7
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 02:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA078C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 02:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676516345;
	bh=EPK7enDtD3yK+D6DqkO2xFBIys8lkWeoiAn4KLRK4k4=;
	h=To:Subject:From:Date:From;
	b=qpgNVf9qdBJVkRCcbBktSzR0lZ8NlxqdLaWShjbM4i8Z4hObpwmuCDvtIkdgJy2KP
	 hKMkAG15x4DQR+X4jx4HjiTC0BS2lq61JxUgrPEvaE/WJZO1XNdqxl5burg7qIVAGF
	 NULncCQJpIa69McqmcKf8Xweiwz6/KdG5G4IxsFCzvxn9mxuVL5mlwF3O/JaZg5FoC
	 o4qClJ78Sua150/eEfXivKIOA7FMehfoANFqYZeJa3BbYh6S67OdbQkKpBOVC9cE9k
	 N4SzWvW+I55NiO28WMeqoTodWOBHFRqKv7cyuEdJWycU1il0qrB//yo7rHWznHbSaF
	 fA2ejI1Ng25TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B687EC636D4
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 02:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167651634572.11793.3109174557932782263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca95f5c422a7aaed6ccafeaef919e85e3740d69d07c5c858b161af59d202999
Date: Thu, 16 Feb 2023 02:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676516345
