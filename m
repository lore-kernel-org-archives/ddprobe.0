Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAE315A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C907C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663901453;
	bh=mO1GSbIFK87sKSk4i8OEYOlwoOaxNYzf4chrU5zSPvE=;
	h=To:Subject:From:Date:From;
	b=HKSDkkbyQa6AW3FdFf/bbw9CM0PCSHRHnwQa+Uc7FgbuyySVfuSKRqAv7K/ppmi5N
	 DHgPsmRDpjeBMIUpkYn7sY2Q4gSl1+9qvbNFUKuON3ejgDZ1WamaYtIDO+U/SJ4iZs
	 XQTehbkd9HKMkFNs0/tuBd/7h2S3d+dNxhm1FGfTU7EqGxjNP7ktrcdw6Xwi+1b2iC
	 h16vt7oWFSc4scxO/2naCGXSI64it70SrRerxyq2zDRZPIPsnriOxzCiwmb4W7d4oq
	 MUdsfz4HEPu1DMYiRjvYA7xD182zsReHw7/jkjuR0VP4FpryfDwwHcTyUYk9kqMlDW
	 H5VIDSP408v4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F6C2ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390145336.25655.18044971608489749943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e771fd0363649c507b9cac2de2620c0e34b03d93d14bf15551be6ddea7c77f
Date: Fri, 23 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663901453
