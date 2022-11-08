Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C385A5CB0
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B51C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667888454;
	bh=wpZ62pgmQ1+IvSnakcW+DxNjoXUSxAg7igIGN/8HCyU=;
	h=To:Subject:From:Date:From;
	b=LSWvUsYfMHvA5ksVVLDYbCtmqjguAjb+Bwc2QJw6flVeEbZHbbzFd2HNQcQC6vHhn
	 Lt7CfwW56j7jg9Z6aw4u21ESU/mRLFFvA0yNfFDSuk0bn1lXVT56SO03b0s64FF0D9
	 3O8ucwDcecxwMvIoCx8Ggt0yWJWjMWxNxUPN38ouonZU0OIFP5aCevwg55BgHmQwUp
	 Va133Cq8SegtKg0v/ac/wXhXpXUCAb1XrHZAjCI7SAR7OWFNfMnC3OmmamQlmxWog4
	 tDR3GQfs5uMMjq5mpZHRGFPjp+6BGXZqkqRmS3auH1hn6ky0+SXC+l+eZd9htzvfrt
	 QOuA8Hr0ohKpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53055C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166788845433.3412.14809372474771526540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0201db0e5817c84a38412a738273dd69ebbf4e367c204487324fced0ca724b0
Date: Tue, 08 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667888454
