Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD4D361
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 892BFC433F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673490087;
	bh=/bYdrWW3LguqJZ+uzrtMzJjDLeJ8sTThhi14c9ikikI=;
	h=To:Subject:From:Date:From;
	b=lg9rlzFNtmL6DFbxFMQcHZYvJ26+yrxRy4gIK0PzV3a5dvpo0HJOgaqzFMR5xL0Z/
	 lLwFxBt/xB4cyLySfPKYspFKhQK4DIocAV1n63eGpdouY/ZzVhl/yIt/0L8Hzc/Hl9
	 m/6MM6OUivq+EbRa9x2OGzuxrCqJwynu8AeF2tPneVVWilk9AnKX6EfQoIekAUpkmh
	 fkm7atW5VjGz6Bh6rRX4PPG5lHy6kI12YJuhFCfpCA9UmGl83DEXyLgoJljhvchr4F
	 uD5+Rm368+z3vtBG9DPNn/llwnXC/YFi61FMer5J4+2X9AeabzXioHdTme/B9EdGai
	 thj5zOg1kLlsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70C64C46467
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349008745.30384.1587667331467414388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6bdd91d2d11faafb7c1b72757e7e507a087a88756c2c026d9cd4f030ddcdcc7
Date: Thu, 12 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673490087
