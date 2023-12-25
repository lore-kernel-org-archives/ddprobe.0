Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23A27E8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/C8cI6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D025C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703469496;
	bh=FHQxlBG00TnjxzWWr0VFVnJh9/Ovoy6e8OgyXkD54Y8=;
	h=To:Subject:From:Date:From;
	b=a/C8cI6pL6uuhKCpcO773tZLWriAZJJY+Zfv19Aia1yeREnrfEBg5LW7oh4n1rVg8
	 tHSH77kLq7CpvFWewR+NFT2zzmkvvNwTdpzFUokzIJ+uEhQmekldORL0Tx4kIS+NJs
	 oEZu3S6KNZCqgI475iDWwo++CZCP5NEPe2TzpAYEEcOkrFXH/F6sYrqPC3qGR6q5Ev
	 zy0FTXOM65JoAX+jVKLM5NFIWjqSBLJonjZsTMbfqqLDeRXGSk/lH7yp8i64br+l2P
	 xgXJOrRVpeIpAXf2FV3cgINXCsrLnky1lFCfyXx8GGgV33glK1+8PqAPTBydU9Ggr+
	 YZ8BxoABrj+tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DAAEC46CD2
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170346949637.19772.3641584626117904699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce900c59c0776be883d3ca2c261cc28e4e8955b80efe462a6805795ed67e82d
Date: Mon, 25 Dec 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703469496
