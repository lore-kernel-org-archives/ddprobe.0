Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3EDCEA0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCEEC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662079853;
	bh=19sKrIQNgJ2tXRfaWYd5FgNEJzu00l4TeIBmE9JmwlU=;
	h=To:Subject:From:Date:From;
	b=RrmNAa2ifXHimrJx0K4mMMSvD9Nj0wASpUQDYqznNjNBW1/omQaZXB63N1tA2StYq
	 wwXTNHctpVmMTeiX5Xwt+jcfFk9CNxBp37yfq9BGCp4470V+9Xa6WWToi2citJutgH
	 0YK1pII2hGo/9u+x88pMBeAToLD0hE8xRpocGnH5si2B6SswNCktv4ENXAgjPYQAvp
	 tefjDTbMLfF7eyxGP0rkEy3UnTpYltPrNc6cX7SZLPpiYHbHpNiuziEDxLPhHKuDos
	 iW1P/lH8rcuQqWWyP/wo2MwlTB6VVSfxiQuHaBOKNAnXwGOkXm/bjEV/XxhwDAwZiu
	 AWV9Qc2OMwDpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1F3ECAAD2
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166207985331.3559.11524962141621552745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e82437366156e9703d5cb424d82b822692f4c4355b7848a46b7956225d7838b
Date: Fri, 02 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662079853
