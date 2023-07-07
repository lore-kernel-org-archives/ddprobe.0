Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E61C7F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34AEC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688690228;
	bh=xTUbWSUMWGBjMCNpYLvhOdAJD4Ya8ns4ay2XgeS1Rus=;
	h=To:Subject:From:Date:From;
	b=WeI9nccB8ht2xxOzVR2v7RpdSDJWC0rrqqNFLpBfOtWeDmEANt2B6+lQ0Wqnn+osB
	 ZhwxYtCt8hBJSsSD/uLqH/2p4WjDuYROp/9f60EjnzW78zgwIHO9V7BA5vvqkK18KD
	 Qa4Qs1pbzQB+2O44xSQ9LQPp7WlZlKsnCdTGprTh6uIuZjw9r+FKkykhvXIiVGIQuc
	 bh/4gOQaljpUF0hMk5kgt3ixXQBLB8RfBd/pJ8ZMqBKZmgE7zxrjuNQCkM68WMqYS0
	 S6+FITo4jiECHNmYGEypw7Vasm8+5ELAju4sv0ZY+EMA8VJe7+Q+958Hv240P3fHFo
	 ecp1qRgp+RrNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A27EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168869022878.2258.10469445167750114202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a49812fd2a468702e919adae3639d04cffd9621b40c55f9ad6cf6bc3be942d
Date: Fri, 07 Jul 2023 00:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688690228
