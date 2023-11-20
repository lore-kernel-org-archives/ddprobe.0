Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DF3107AB
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APq10rPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AA1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700471296;
	bh=Yd8fnYkckB92tGgApxVOM7L648dJdYOlSTl2S9084aU=;
	h=To:Subject:From:Date:From;
	b=APq10rPbzV/1sKIOh1hQcR0PdoObBeewlyYGEBdKKXmGRFJkIydh6vcW2xFUuLdgz
	 KCyXlEANnjHHz+4zpvzPew+nPEk3Fn0quDQTbb5lIwBjdeo9vg3QFY4jG3IFi64sK8
	 H2O0oD+dgBwUxH7bNXE/UKY8hyQEeCvQGHOvUOMmcP4SynWrWoKbKrDLQkySdCT5JB
	 1ljyn3+agST5AM0AYz+5+89+zOnE1rS00IU/EzqMtVhw9+sliEmFomuyCCeBeratHb
	 slNWCohusUNKbd1PM3IcxIUr54fTOiU3m3pBLjmz3rR1d8RM5sWWeQNFDbt0xAEpB6
	 PZJFTQyjirF2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2A8C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170047129637.5279.3218146944983334856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da22b9fec98223304a81a89213694ac9233f50fa35dffa72aef38cce52dbe16e
Date: Mon, 20 Nov 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700471296
