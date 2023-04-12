Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC6233CF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 10:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FA4C433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 10:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681294325;
	bh=RiLAfjtjbUecPfsinTGp1FnLVuCAM3t9HYZ8xt0QoP0=;
	h=To:Subject:From:Date:From;
	b=oZYSIZ5SxLgFP/oAvWmyCENz2FOrie/hyYis5Y35ckpWgisy5CeXx4dVPDYsmqX4t
	 ukfAvLsFECK6kVNcfiFCeuBs5SzVj9caQpUYwVhENIIVQkoINQ1Bh49TvrzCAK/fgx
	 i45rW4Ib7lZFKjGG0dBVriL1+p20wR8Hb7EBGfoqlgh6Kr/R5Qu2nKh8LdjooJ/nsk
	 CjYjEgaVoBuDKOf3QhQiYLRoPBNRKrPl4uhNIZ18iM1F2Vp6G0sDKUi8+2c5slL0VD
	 /Vb7KhGkjTZYM3oI2TSX0+4q/N/2WXTyz3MNBtaHvjmFDEakRpM3IKOyh/wiKyl8HW
	 MXzvQfPy/8AYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61A6C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 10:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168129432580.2333.15128230360122035226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41669da4f1a9d5da176276d201fcf89c5a1a8bbd76e884f7cde3f470b6eb4878
Date: Wed, 12 Apr 2023 10:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681294325
