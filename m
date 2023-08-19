Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E15D6FB2
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 18:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53DEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692470648;
	bh=x1Wr/BXRhLxrIsgp4/3srTbOLibImU6l3EAVMySRGaw=;
	h=To:Subject:From:Date:From;
	b=feyR2kLsX+H5IMTBdHQ4onSvxR52y6yVXe1LZZklvbN18pLU/1fatFdm+CJMsJ4FW
	 oSLEFlHOaXu1qO2iEoIm/IfBp9klSpiW5863bueRMlQbbrLbZ3gMe5+AJLBoLyE+zS
	 2Y2GbUdVEHM71q7NIPJRwI8jXACdk8f6NrsU9HI/yRM6l8GVmbWhf/Pnx+6PYcfkCo
	 sYcGRIZHtJCLG96XedXS1vNTM61J5dDOM0yiR8z5oBuXYUUIc98uypT6dI3vZXGb2m
	 N01kBjoH4V7t26k5JxzqSQsLRu8sIhfeNtIwL07zBv7pJ2gpteUFfDASDP26sEpYVs
	 k5z+YaHddcEyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEB6EE49A3
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 18:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169247064867.30644.4657677643215728403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbc8c4999f7d4513cd89ffefc5942b7c1300e728ab53d16cae0e0b4404a517c
Date: Sat, 19 Aug 2023 18:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692470648
