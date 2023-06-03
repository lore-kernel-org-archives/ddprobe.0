Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F38820EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 15:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2BBEC433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 15:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685804886;
	bh=gdLKOemdkqJ0B9sMkIAZpXKFQ2DkfoPP2aGR2rWbnyU=;
	h=To:Subject:From:Date:From;
	b=P6CLCwF7TEqyqOU41Jf5rIZl2jrqpzgrcD2VYxxp+IPvur79Y7LzXvlspzZP6SSSE
	 bZv/hRbgHW/3J21HXWZWjITE4eb3/9Bl/80qjRFD50hJ8HJaTKnSuGXKIGQTOJrfEI
	 w7VZA1Xm/PDKUe3U4Kj0A+Xgf/2RFAqlnUSIEz9I81qI9h152Wbo08SDcY8LW//zw1
	 IDJ6oXFppsmOfyLkdVfD+XBFNlW5WdkFcXpn4+Y/PR+6xAWdo//sFyvgg/HlgPlhm9
	 n+BHYuOfS891B26apHrJx+QZHoTXkwO24g+vl+0F4kug8rPbzc1tWngnhaxsutAVey
	 +O8SGKAI2Wiww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D55A0C7EE24
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 15:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168580488576.12535.128969408997479620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b773442522083256324bd8fab2c334e0da031d84775f8fece30635187b1eefae
Date: Sat, 03 Jun 2023 15:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685804885
