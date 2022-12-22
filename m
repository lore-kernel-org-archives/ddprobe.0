Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E504223AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D432C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671743487;
	bh=ubOAw5UnoKIQP3OuMVajQ70aeY+huX5OnJityb5L9Bg=;
	h=To:Subject:From:Date:From;
	b=mFqzXeVP+XG3P7lz/saLKcHOQXz0jxYKkMJRYYR7ZrEygFyyoS/PxWOW8XPB6bLga
	 8asKTniHfZ8u9zkTT+J7KRC4np5iC18ojvVffNYGx6+RmEU/8LtrQ2zjZMs9B79HGH
	 ZRpb8MJCeGYppKo8z45Z5RhZz0i080psiTbUzUrTgAb2nY1TLpXHvMBNVqikC6ns0M
	 GBHfscD246I8P8cKX4a68tgfmyOn2JLP7TIUktWNVTapFmsNQfxCjEDwnewpCxyiQO
	 B75ZCVehicwcqppWPJ97h6j6nuOcmAO/VbPTubI/kljWEzdkczuAljFTX5HEyOZ0hu
	 2rfcRR0Uf2row==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB4DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174348742.30832.13889265777994454417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73046c89fcae4bc9a72c375828a49c356a51226e9ce87d4622061bc584b72f5c
Date: Thu, 22 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671743487
