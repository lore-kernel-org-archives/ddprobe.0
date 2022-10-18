Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21D933F1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8FAC433B5
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666096853;
	bh=9tCYDq7yzhCyflhWeotrnAtjDm+k3f80tISRvN/sb1M=;
	h=To:Subject:From:Date:From;
	b=iOGEL9/1cnLl3RnafQN/QfVpy95n1B+eDTssNdWgymS1H7WLgM/nlPXHBkd96GB+D
	 b7H61VXdErf7Wk7a7ybvFMA+EvZDy9nb5rms4SLFQJ4/jWaE0Ehzgq+kSyypDrNsoq
	 4Z9SWU5uxEdUBp9cPf5FBVho3+UhzQPD+ugxauLCciRdqiUQZ88z3ELfaNHU3cyEW3
	 OMTKSeWHflY4olnPT35a4dk66S87/+de8hgS8Y7i1XjGReSZsPf9+xIca03O2SRK0z
	 UpxYcSbBpUsQrC6O4+Ss/7NXj3Y/zSpI9Goucze+xh0IfZi8qPni1tJNcv87ceRRpy
	 XrcIfxx5k1dLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B0BC43217
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166609685334.13032.9546327031263796419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142faa6b159f66a6006256d4705bee8af045b6e096d8d533c6456aa2195c0732
Date: Tue, 18 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666096853
