Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003E129A1
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A694C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671302487;
	bh=X8lPopfVHRsEDibs5+UW1bk2v25uccxJTSeMcByA6cA=;
	h=To:Subject:From:Date:From;
	b=WpV9WQOERWbH8hSblQMTKNi3l3quDIKIl5+slre4/1rG8F3WrjsURveWrCA2ZRYH/
	 vAL9HJxEF13/KSbWeWzHbtLuQRK78BqnSeBzJyej/iIYiwV8nGKhwWbbkYxxVK4eVt
	 UEY3sehBIKA+4XD8KAOq7aWYs3ClLxMSpn558WdDh6j5bRBm4DOjZ3mDUr/eAZh9QP
	 BKtTA4KIXQE1/uCSXyPi53kd3iDBIa2TD6Lu/hIYQ2wD29kS/ouQHJs+JonB2VNmtu
	 R4gUkxGEl+41qkOjK9nNlH2ZmnVXcdiwuFjRJwwbcjmZH/A8gKXFXDPkZ+qED2RZsa
	 sF7wst+1tOyUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DCEBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130248750.19090.8452388890055108022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66bf697841fcd99a0106159de39ef72934b7782ff47417773313c16bb43258f
Date: Sat, 17 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671302487
