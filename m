Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6630FEC2
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 04:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12B6C433C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 04:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690171928;
	bh=CCpMNYztdX+yz0XcGxW1QZvarzBgV+u80vLjG3Yd7lg=;
	h=To:Subject:From:Date:From;
	b=i3rWipfyXsRQsfHIO0lczIdL1yD6qVq6E2KzZ7iynQTQAePrwK7X161IsOn+l9mt1
	 F731L6tu2hcP2Lpp0O/fWYAhHMugtJ+fOpqa1McYj1DDloSpl1lYh/JP3p9EVrhwgH
	 PCmgDJhLmqiOe/g3WZ4nMEC+kxSmNP7NPsLNXcE1f2qQ5HO8JKJf12IwtW5uZOorgh
	 P82LSHqa37ptrlFCYtKPaiajR8Ac8ToJpd6i7D3u6CKcdhAkilrZ666YK9QPx2//+c
	 Tg7E4Jy7lCIjRiVmuMGijOeGMuoRvusVAonRUuTxFJKvfcXnW68+v236RrdBMneoeu
	 uU8T1v/u6OzQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F22EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 04:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169017192870.9614.3196493102524210896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f25dbabb17e802196af524e9e5ab6abeb3516687cc8f7bcdf2628d45eb7b54
Date: Mon, 24 Jul 2023 04:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690171928
