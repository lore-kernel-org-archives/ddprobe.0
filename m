Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A93E110B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 05:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D542CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 05:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677734765;
	bh=Dwf1P3XTCxW/lCkv1ZGC03C8A9cx9sfhspB0ir86LGQ=;
	h=To:Subject:From:Date:From;
	b=SjeUYa2sZMDWxcr0btiJdXKpmvZNuCAh/X5j+PBg0eaC6N19rcDQeCSLg5FqVgX2v
	 tDnXZ8Zb0jSaYDtMIg3iq2bGNknkjpKOnzkUmPlFnhWybfkhhf/O7BT3+xrZRkgfvo
	 7NJsHICyWqfCH1hU8VkYfTAV8M5/u6Yd9mgtUJzo8NQ7TNKivawk8g0qW4SrF/m0QO
	 JYDRkqlGNbV6gDjC1dN54Arz+NeeE+OFPbmvrU+HBa7OCPXFTV9qLsG9ZYkfIVoHgI
	 3ovUqyJsKCK+YH8ySqGYcHKnC+RPm3RZja6bMuCnze6QYx11cWizElDdoAe4l1GpV4
	 YcHQJ7OEDf6kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7875C6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 05:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167773476574.30955.16889224353313450512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c35e12a7194273a876215a317e9f470896d6da34352ead420ce6ce814fda4c
Date: Thu, 02 Mar 2023 05:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677734765
