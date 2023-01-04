Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4057EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83240C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672824687;
	bh=HlHhDh/449gGTzCFowBvYhZQ833JI0Haxz5kNsXCGbM=;
	h=To:Subject:From:Date:From;
	b=eDmGR7g1jYafn9ICw5DcPAsvRAx0tvAwdHo6B5x2lrsKMjjU+kNVE4JytuBKAVHgM
	 oCB7fTWdYt11eSvQ5cu3X0/njlEett/8zNvHLvH3PIaNjT/4B/dypJxI/pzYp2ow4m
	 Yzg6JJJ49YQoO7IvL4KHOtnb1v1X0zguNOAKUpAsehwH67u8/X+jH1WSDr2EoPEwEL
	 vmRyiaXSKcF+8PIKEZKIEHkIaeYe8WD341iPEyenixpaMYhIc8PkmWEEQkt7ctRDu1
	 c0oK3eD7QX/irfK+4Wy7RFeTigWs8qZ/IWGK2MZgaer8pO0S3yOeo7gs7mR5FFeGOm
	 WB0Alcg025oKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66427C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282468741.22945.6356338674004140068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e313be36ca0a6aeebb21824a71c40a891e625b1f003661ef842b6bda5bbaae6
Date: Wed, 04 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672824687
