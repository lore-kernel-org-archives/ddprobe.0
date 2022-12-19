Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC49BA2A
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE79C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671431487;
	bh=C8CLloF16GTUqcuHn0GXIzNwljk9LfO2RSHk4YQ30MA=;
	h=To:Subject:From:Date:From;
	b=kC6rj3G0vRx9hHs9sssgM3MdgzNCv7yoFm2CdIhrYm6LsGIsJkInEbH3zF7rLavJr
	 dtZelTujQthMJivuPeB9PuqzuOIcd2AK+9Z8O9FMYFDGYf+MLUfCXDg0Gtb7F2Kxpt
	 ZBj0+irwneQeEuTi94SWGH9KmoVAvGdy2gqNsGM7OdeHfGQFWymIJrVHPh1EaynwaI
	 XecLuKbFzNdBvvsy4gC3ggfpTfwLBDBrHuWlVCueOmFI5i1eq0guBffsZ5S/iQ26Wb
	 AOk+k/aVcyLB7XWNPSxCLJ37ZDz0W4hZczSzcaB1tDKR/5UOqRbTJtZ05nj7z2xRNz
	 pDoRxWXRGEkAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F7D8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143148744.25431.17557232546276097162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96318d7f4d92d7aaab93d56fc7409128923de04bf3e92be3f7a622eebdcb76a
Date: Mon, 19 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671431487
