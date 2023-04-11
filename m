Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E72A28EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB038C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681198925;
	bh=05gD4DhPCgJpHUAIRTPTt9M1Y7lpgOHirSuKQXPM6xI=;
	h=To:Subject:From:Date:From;
	b=C4ZswzxKryQnOWU0PDj6t3mxcl3q734lhJ3YuuqRThV6q68Oajfta2naLGMUja8ol
	 oSTdt9u0NqCJOlgLeYPZgJ3Xeq3bW8uAzZWKeh9EHH4Peha9X3pFwZTDuxO0flOGZg
	 5u7FloeYff3Zl65LDzR63VoqE3kITnFh7a/BHuadICVg/5awLidctNa5XK3DkQ96ka
	 qOaju9FqMU2b2ThOpX36qHkiA0pcZv/A5DaYw1Mt78Q6MMW5P7nK79/OzlVGz0LWCW
	 Lr0KjWFZ6FfMEVp4vrspAJjnNX7Jl+d8YeTiVzM1tDYNiUx6qiX1usKST5bv41ETU3
	 85PREPtOtY4nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C031EC7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168119892577.21014.5714611359214583867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e7abf40e306c798445347d3963176334462f8f387768ede99adb75b70a9995
Date: Tue, 11 Apr 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681198925
