Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FF220F0
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F604C433D7
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666415453;
	bh=n5mcKcfT9yuolmN2O+g15EU8ASLULvuScIQN/FFu4/Y=;
	h=To:Subject:From:Date:From;
	b=GyJuOSGE0n6XYiZzYmW+xm8AkNmPHtc4GvP9bjySd2cukl6wWrjblEIgM3urKXNaD
	 O6u9TcffRxTdFxHI1eaFAqAYxQTOfkBWKHx2r5F58qa14VFjQequWF0BmRZdHHjXQ/
	 qgQh1dKD9zsE/lJE5s26+fhzDZHTjC1DMXvpMrmZdshU+w0VkIiHx9VtaNcW8HuNVI
	 yJvZLZaKUipieRp9lW0gOUvnCKhkqJ2AUJtL2fAY+WZc0ScH4UIvxOACuet4laXJ64
	 8nkp5m49+TI27jV8XcrVTkblACcJqiRZDN5yKI+ZIK5oqu3SUdu7DXesy6BxJYrOrO
	 WUumurUHm4DGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513C9C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166641545331.8848.11298041661931873920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d28bc62900dc985f80ac335cdb06cd03b39e6c07a2680ab6905308ff98fd3f
Date: Sat, 22 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666415453
