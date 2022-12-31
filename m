Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64ED2564
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F2C8C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672519287;
	bh=FSwEgxnfDHNm16X6n7NZZtqPNl8yKFcibheAeTp2M1Y=;
	h=To:Subject:From:Date:From;
	b=GeTyll64uHPS6K+GJBFAZlH3Mr/UWvkq5ezyqnPPGfcfwdhAdiTyPnkdy4MRE06UM
	 uXWsXSMlqgyxMGxr2Qo1eYyNlKdzFtRIWPkciXaxZvAaGJNs+2PMQOhDiW626Ois31
	 HgkyOsbjc8tOsh6dsawZ6gFYLPZUat2MYFo0JSdxCljsnbNWb7kZObY6CSJU6D9n/+
	 hB0LR55dwDJykllDtbMRFhini/WUw5PMAUbBGDZy2tEwckmH56NvwH8TkjXfq0h9B6
	 SR3AcAOeJPQy/fMsdGS+OJiY3pMTvHBCGZTYFQqp5cqcF7v2YU2SUBPxYJ6he2Q+sz
	 zMriHadnrunGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C2CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251928737.14773.18122106375264781838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1727cb7adc86684b14e8f7f1646ee4bb8519c43fa794ac06555be7e3570279
Date: Sat, 31 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672519287
