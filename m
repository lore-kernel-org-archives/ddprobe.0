Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17062564
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D805C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674028887;
	bh=yewFiKqgESW+hCaAlFp6q2hxAxnnSHTzz2pN46XZglE=;
	h=To:Subject:From:Date:From;
	b=rvh4joZtFOQmq85NNhPaSfmV1Vn4ov0quETmJF4FikMMzKXX5sd0D1nYk9MVsjDLG
	 EJt05BHPWyExKeMoTZCMapEd4VI92y9SUOrSM357ewhRXIB1Q7NLl65aAqt5zQzOI9
	 1RNpNR9uR7Gj2+kEm8YOOxoLKojBvOKE8P/FmRqD/Z8Rd38CDmxp9847Runa7yyN4l
	 1ibmZpU/9p3kMQob8MLC3qOSD53u+20SDTH1jKfop96+lh3lswZ93RP2NiKYpfdC9D
	 Z4vVPftyhKrYaYM7dFnzjCTitnmHXVSBO6C6cWT5n3gJZoA6/jb6+wkuf+8UIoi17V
	 9Q24xbBx8QkLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE6CC004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167402888738.20201.17200604041574855445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ca47fda1c4ae2c013cf581431cf482a17e4e130161775fc941b97d2acb4ec2
Date: Wed, 18 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674028887
