Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C763028E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D42C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661505652;
	bh=nGJjU1MvLFBvZjAj9lVcZWsC2RdcG1Ncd0tAawZslQo=;
	h=To:Subject:From:Date:From;
	b=aZ6SeKf9b+FhBSHTdr9vdXWZV1phF4nTxpPYmMaKOMC87lyU6OvwqiTJbl3tPkCfN
	 BDD72oSrNgjM7JBlbQtNymkQVCFyFHXSeenjvxZWpDu0gYATBQ3TiWQSuQ1rqpUX85
	 y2jcJfQFvXTaZT0cfCQj3rkE6EZdKJfkIGkauaA2mTadqSxGJ+YGCEil+uuUTyNmlw
	 dQsqWzaYj4Buj2gnm/t6++CG0Jz5RdwRN34ZWkq263PKDY7P6F+GMzCOVZ3boUmGG+
	 4+KqCkARBraFz8ImuQ0mZ1Lo3LDbmPuqZq9HsuaVWeCGTZYDH+hZ2Yq5O8kFhUSw1/
	 02ZUcZ1V+EdtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575D6ECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150565235.30833.10090400188292645697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2fb25aa02b01b4f7d8b13e4b68c7fba09b46a5ab88d592b750c17610256528c
Date: Fri, 26 Aug 2022 09:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661505652
