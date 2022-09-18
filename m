Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE28A7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70514C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663495853;
	bh=Og/xzIn4SnsSkfUyrlWxvr9fr2K11bUnZaEG/Foptoc=;
	h=To:Subject:From:Date:From;
	b=ip5Cs2UbLXTtEQ7Ju5Uo8irjhvz2wJv91n6BjRXe1ATJgq7v0GqDbHkF8bV/BA9Sd
	 6LgOSTbY0TnxAKEwU7OGDdqIv+RG+vTR51ltomcHgKYU+9OGw0FvY/8GEBZkUXbFzD
	 GZkidifuy4ElqeN4WyyMqm9U8UTenmAwxnGUElGto03nTdBDPLsJnyIUAtw3OslM1J
	 lns/3tpJpYz8V5T6MOCBn89v59l60eff74LbU76rUP27rwcXdAIFOyjtZ+Kq7gukJg
	 gc3GBvUktWFLPAMW4C+tGSaxyTduKAqtb4pOUrznGvLBlLN/8/sUg3XtBz7enju7N3
	 TdzTtxTZof2tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F6A0C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166349585331.4645.413400503098499513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5fa7949de4e4ce999d4ab19156676ee0652c0f5a6bd36a18c16e9d847dc887
Date: Sun, 18 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663495853
