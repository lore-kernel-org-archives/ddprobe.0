Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C651423AD
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B93BC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663831853;
	bh=dQG/ufJkgtvn2w3hj0lH+4w80UpGjzm/FCEA1qmay4o=;
	h=To:Subject:From:Date:From;
	b=nLAkGeBc5djVGjg+9Ta9Da3eDx56Yo8DToZLTQHSuTL9Yxq0YCNJCNklMUrDUbaQ+
	 bEIpMNmtNKfeF+8U/h+ZKtBlHecxZkcSbKqst/BIAs6DOYkouHNox+XTbWf96yUNKR
	 rEzqfq2arIP4loBY8Oy5tVt5mwiD6oky3DpLzw9UC2mVt/Hb6skzuRIcB6J68KOS8Y
	 +tZIjNjqHGMDUUC42qEAxnoUMZT/CVTj4Y7AlMYywM8ZhNH30k7Vx48k8ypRfeJ0Ft
	 a03C3DJ26WGbcSrIk/7DFOyGBj+JK20HY1QVdmbwfeToOGa2Y1shyKiR6woMVBpNQo
	 +LhNvr7ODpEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA7DC6FA8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166383185336.30786.15274413728614617933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56aa44a31b9c9b013bcfa853d359da3c36b480c570a265fa3dab4b2b401d4c16
Date: Thu, 22 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663831853
