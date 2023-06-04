Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681D32CA9
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 20:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB664C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 20:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685911145;
	bh=89fVkhj6yowqp2egcxldqssP6fMK98pffAcMFnjtw0E=;
	h=To:Subject:From:Date:From;
	b=EnX6Rx5NgPREdtcj+EHM24gtsg6eUGFnEGurd9sLA8udglIjG+rJx/g6QrEWdlvBb
	 yOsh+6Bc7TlIcVQqGk4ncjnBlc7//onY6JgYhsl0gxJIOobVwxoYH4SDAxbK8IqEWr
	 X42kngCIefOCdjlXUHanBE40xiE0JF1t3ErZSAGO6+3HLyLw2eDZKNi5+s8C6JOGwy
	 MvlFsH+hR6iVtHssXR6qCaXsONTux+8cz1p1WpzkoppcyeAvRU/addBDz7iD+s+gqq
	 vcWkL9GU/IrKRWN1dmNmpz0QZ0PljRVPBzRN0MWmccq+blRBhozlorTdt+4TA+nDRX
	 lpHzqLaxaYWWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB1DC77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 20:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168591114575.20646.15756455359521304169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9274d042bf179d8ea3b76a68db76e86db5d805c15e587442128c0b7c2b56542
Date: Sun, 04 Jun 2023 20:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685911145
