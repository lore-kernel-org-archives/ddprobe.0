Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A904A2B
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3C4C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661967653;
	bh=BT1eEJOTaNNFBRbrCFHFsyKCHBaofJl7zvKSmsyYYOo=;
	h=To:Subject:From:Date:From;
	b=fTj8BXJP0fUAVTNImueXTYlRwrbpUqg8CBrV4MMY6/OHPkIjuDSMp/AWlEMXaZjTl
	 fV0Gc+ZgY7c5ibDHQ2tvWzrVaLhM04ExGBBA3HP2JtpWw3wyWoqFWixaYY6PclMNy3
	 sW0F3jqoUR+BwFbykro+6c1e2MO7K/2I9aDoJTnGyOi3MRfRGKoNNVeDOFoq0+/pO5
	 pcrX1WbGoSPy1k9WfxYJKc1/s+lby6+rViwXgeesFVjV6gy8bbmpHrs2AoWn5eHNxD
	 vKjxz0npvjA48Q3ICBj/K6Q65conjBiMFJOrc095Wx2+t2XztICvgrMsMzvxjRKcPB
	 wINAj6lOC8R6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5349BECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196765333.20031.11612259377752380614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12401b6ba45fadfe71a21b63c149cc3193f5ec49adda0bc82d4e00860542d3a
Date: Wed, 31 Aug 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661967653
