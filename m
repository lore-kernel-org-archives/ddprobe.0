Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A82CED534
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F25BC433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688241249;
	bh=BnoxG+UbC3B97ikX/Rcun26N4hRMvYLCb2dN+aszFxM=;
	h=To:Subject:From:Date:From;
	b=nazhQ1E5i+sGZGBYxTM3BvxILw3JfAE+zSAlwGgXCeS/niu8lueXkCLcR6WmyTu9D
	 AO2Prj7fTiU9boJb5xehrYgeqWXC7dtLp+5TGV7DeDo7BoWzn3A0YttFVODNzCCVJ2
	 yPIQTPMghU8vuyCwEg4qPLHJUQfnS8A/fWYPYPtbnEL4rj3J7Bzthj59MfhqPe2zlg
	 /TS7H0AXc+k8OW6zdOuAAur0bo5JO2rnWWtbHsQWEP/uRCF2KqrwzWaTrMkCxB7zmG
	 Hx5X6PQFgoo9412AsYwboOB3zAQHnBI7NLIfPSm9+KWRJrMF/qCtNgkPBrbgxtdGNp
	 WUTKjL/MXmmVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3378EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168824124891.30611.15935208816810934950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e692f093a5eb3d812bd830c29a11d0a0480aaa5dc11b685c5c6eb1d9b94aa8dd
Date: Sat, 01 Jul 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688241248
