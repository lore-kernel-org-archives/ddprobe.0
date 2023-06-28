Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F228833
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 09:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4893C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 09:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687944788;
	bh=xrnt121cCBB6lv8r1nzX02sKfVEDOmRbc4dkn9539zE=;
	h=To:Subject:From:Date:From;
	b=kE4N7Ual4tYEZcIVSSu4w/FzyOXO07KOVDsUq//bsLsQaIMyRLC87UNN9Vg+pmPr7
	 Big/eYwAlEa7GTW64FfAR6kyidOtWCsTxDQVg8fjlPjujXd0ZY2mydhEkTIGWbHDb8
	 jldInV43hUmlPWJn0LILMzrGXOrfkmuVSFCVXG8EqhaZMJ1Ua7yq35hlcz01aiLysi
	 QVZ1/HLx4yzFj5MNSnXOejR+IPBvZI8tAT2PVe7Dcrdl+Uzq2H71sc0FE27Q5NFSPI
	 JhZhN5h2j+gcCzv9PilXJRIXeO8eHHESBryGiCIIsxe2OmXtgcJMErvoG4VfFiUPWU
	 bhtlUW59hKAOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA7EDEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 09:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168794478882.20863.8107406172262289787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b35baf3d3182eed25c886b751dbcd2f03d9c58c9f96862e61fd6fc007e0cc9
Date: Wed, 28 Jun 2023 09:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687944788
