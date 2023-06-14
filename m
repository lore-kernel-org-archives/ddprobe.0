Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90BF88F74
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 12:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2418EC433D9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 12:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686745629;
	bh=/MzXc5U9dUJMzIqaacJlKP+/K6ux+Mf1Ta82zw1meeQ=;
	h=To:Subject:From:Date:From;
	b=ObhR8mbBxzkosSKgIU4Et4SZEfUoM2TOGqGFH3AshEC5lmN4kiQ+BnYH57IKsIrH/
	 z6XbWgSNWNGjLQOFg0LwLNrSynayz0Sl2JVkDYozGuwxHXkEZQrN3Ah9Ng9QOdt7P7
	 umBBHvjik+xR1fliByAb6T6QuTqo1B8Ey95PM8kA5bclzbVzO1WLkIRSh3efkUIS63
	 wItOVMxmXKa6o8vfv2iHt900mbws8/YoIufJMRHxcjLqjwo8+QPctwRxm0OV78VRKM
	 wK3pZ3+YY9GfRw8XZX46CK46EYJrTyvs7oI8yGxRXWb6jI2no6UBNWaZoVXg29qfrH
	 rq7H2nbV4CgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE360EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 12:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168674562883.20634.10597725759102679465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7f4ab015156cbb933409fdd7a1fe3d7b6403f1f95d8193e1c69374bdf8aa86
Date: Wed, 14 Jun 2023 12:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686745628
