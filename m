Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6527B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D11C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664337653;
	bh=ITi2XaBOXuhPV85kmn6AyGNf3fFHOFXK+OA6+gGJWD8=;
	h=To:Subject:From:Date:From;
	b=klBjZ/Zx9gYzkMZJKXddfdLFzi35hzojhkBr34DSbPu1WrUj3tvmw/RZZkRvfHJ2Q
	 BJIcHYX33S2I1G+VfpH0X3UoKI7x5ukD5DCD6NNkzpkq8uqTQizuaRXdTfhDgQCj0G
	 yhtwtdn7xIl6ruAyQ9ChA84at1BsANScnRM4E36OjzRfhfnei6TqA6WQ8FxugFx02d
	 y00jkEtzRV7EZlOtNb9HbZotuAVGcYBIJkqK+nOxAQ+7MpzYF4VDos3usSbSUXJhVK
	 LQ7YT8HiSLlN1WxJaNJr2FyXXGH4vKuvcNUqPGUmybUQQcJLuiCcm4FGFdtjkqgX57
	 6iw2/Vk1V67vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546A1C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166433765333.1484.345866905516625641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2882f2e21f402120606c932c928ea2c631dd992aad89fcd01663547386dddb0
Date: Wed, 28 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664337653
