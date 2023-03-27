Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307863C0F
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 15:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33C6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679929985;
	bh=zUI9orQyodA4QEZxq7CU+MgsrNLZjAKDmxvZFzBbskI=;
	h=To:Subject:From:Date:From;
	b=qkKwjscOhfYk8tU7B6/eNRsfRoEd/tYyYfb2PugkISL14I17T2O4RKf0LHUtkayMt
	 BwdaxHKupVAFkHDmZKzuVySY34jPa81efyJz3Qsv9/rUTeqeWWVCkT/7EbF7jah9RQ
	 jcAKqkyDAM28Iwuf/qUMhpO2xhy3TYiVib0TjEVZkS0xDSW/BNRd9xyQL2usQiXPdy
	 Fv8DIr0ITRjyli82IH+qo1itN1V79H9m78b3OhLu90bTV57BJHsjEjxu7w+WrYJvEE
	 SQPsf30iZtWXTPofHFt/vPXXjre4KPBsYlRGqJx5bihfnix30D1UVH6NZ5Agn+onJk
	 Np5KgRJnOsVXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3C5C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 15:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167992998576.16259.7842756050543035148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb92853b2e88c2383db62f4727326760bd21404cdb3854bbac96d8593fe7452
Date: Mon, 27 Mar 2023 15:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679929985
