Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629802F2B
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 19:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04CFAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 19:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678648626;
	bh=HCtPon39HPf75xEB58IH5UhocIVi7TqLwV7FTYPswqM=;
	h=To:Subject:From:Date:From;
	b=SxlJkjNL2AFazXQH9RSyd8P6MA0qqziHIjN7wAzHjACzBq63/FVtnGS3fz4Rw11sb
	 /cpshHF9kVFCRkjBKS/cdsqxSs2uoWtPG57M6jE5ViL1pyWqBkalUxGf4PVqESOsX7
	 q507YR0DMhlRHkj3/6RHtVsApxy+62knOpdenKztHUb8hpmtkF4nhl4QFNPp7v1f20
	 BPuvAQWCSXCsNNKg3lTCe05cK5KcEsSllvt5yXcaNMcsI5WTNux/tUPLbXw1NB68NR
	 oJWNLp1LdDfdKxSnxeZE5jfRXtmeJZDIqNIwsxS9DyTRyBSrAbPM6WPyx+eNZtEFzg
	 x/rIGpdVP8m8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D529EC6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 19:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167864862582.22479.15536019476548726802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4928baf9c13a22f7b5b4c8f4acb6adfb7b99cf2474eaf0c3c8c46fefb7394b
Date: Sun, 12 Mar 2023 19:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678648625
