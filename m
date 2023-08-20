Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DFE3A5A
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 03:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF85AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 03:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692502448;
	bh=s5TNA8jX1PyazJ3uGI1LOb7+BPgsv5eDrJUQweiJmF4=;
	h=To:Subject:From:Date:From;
	b=YhrEfDJnSF/7GoxCS3X3A77fge/sjsCl5o4qzQ+AAFuEk+qMyQMX0Jlf4KPSLWlLJ
	 7SvZzVdaxczw/4hjmp8IaDRW1UZcnu+H6A+36zIYsNvrX054uXJJvv0QR9LIhVbxlb
	 nQOvCKnqvBoz8N4qK7s8Y/bD+Ajq2pgf4uzigCNel9N64k9VQkWReYK1GkQyzwdPQw
	 Id2voKWIiS5oyUGU4r84unS0BJrk/uNp+Bw5lfATWBpgGmK37WLr/07xkp6MSpyLpT
	 iXAlI85u6dwviw2ET33/qgK33eTy3JoutSfjzVWTN+oaPQttsyJeb8uCk97C+yP3Nc
	 PdrQ36nJi6/jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0551EE4996
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 03:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169250244873.9250.13052197699403935708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bc373e0b9057dd866dd8b168984b0fad5e039c36aa1b755925ba8e0cd09ea0
Date: Sun, 20 Aug 2023 03:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692502448
