Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAAE1E804
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B690C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666914054;
	bh=qNmoFzLLy9UcJfWMCQbpooMnWs8bkHhDAI4g8SQaoR0=;
	h=To:Subject:From:Date:From;
	b=G/A2Ns97O0dJXyU9mruO9kcTTaFpk63Au81n52a1265BhkM0bnaclijrMqtKDNHSI
	 IVv5xBvHH0yovh45t4f3Zkn9KCp62ltaek+qsdsFHn2VhcPoq5MhHXgjvOWvef/8AB
	 UkFmamLKtMp8pJbu0KCroKnhaf6/CDVz80JFCdkftomssOBqZzHitbcIlNS+nyjuYm
	 d/ibBM32Bom74Z7fpWQMYKXQrDeMmTCm+1DfDFe3ZXwu9W92YE21H5xyqwg193vAww
	 ncnnlwSEF1OVt77s2fWtyyAzGM6GqLBJ1ShYjYcfzcL9rr9dHhNBTMiynAi3pm1gx6
	 BXVScH5LbFdGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521C6FA373D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166691405432.1008.3873206906375712661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9042ed8910c42ea8bdbd216e9c87677b8c10fde149a3e8c9e1a27d67ec828785
Date: Thu, 27 Oct 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666914054
