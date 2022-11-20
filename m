Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAFB3220
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7519AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668975054;
	bh=Dd6H0NOPtC8B+2RlWe/lQMfAoPCecr8dBmhRnBf1oPk=;
	h=To:Subject:From:Date:From;
	b=NSA4So+ZmGVM/CU5k4fC03EY5s0FLkaMrSkmX0QhLfe9RYcjUD63KC9isBy8sgH+s
	 paAo2NnVGbs3yJg8ld4BzVAcYeqxrj8YMCd58OcRpCIq8YYhVqvQ0NMqy9rCvATpdW
	 GTMAmtwpZ2Dne5cM2x/rnUPrF9jRI2Jc3pqO2Sri/uihOtT5kuDySt30CCckOxcPBH
	 ClFoOJnmYY+9TROuz6BI62FLS12XRROVoPo8G8890HDaPtXigK9SxXznT1o+aLchVC
	 erzDtxrCSEe3wa9p3ORkEHdeB2jO4H/TBstcx+YJnn2daNDM8xfCYANxGcWddsRLMk
	 Xs2KzELJojTFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5520BC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897505433.19402.2840173638695206297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce0152b0847ccdd6c8a62626100c15542f3b66b555947814e7d469ebb96a75c
Date: Sun, 20 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668975054
