Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC5915CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96D0EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671735687;
	bh=F64lu5fcUCWzpvp2r9hYsYIkddmAjlkyNA4YYRpcyZw=;
	h=To:Subject:From:Date:From;
	b=UaMxJyzSEOvUcwAbuuBxzEL8elwPB4K0pJydlEQR3M446COsRz4/MoIaq8rWsTIwQ
	 1BXkM2WEvEVFBKpocvpIXPd/RZqhOrLUSJKn7kW0PNqUZtBPI5p+D+pFZygTsfdc2V
	 2m2ZKKy4EFi4wq8OtjjA6MeA1dMU7tUzoUFnBpPqGUIeZ2OXPqNA+IPfpyqlBPMsw1
	 IBN7gppAonto1GgYwGchAWV8WHUtpX1e+cUBZM7Fin08OJ2ddP2rQRIgaI1i/+mVRH
	 2mvK2VvrFKoO7Pqn5gASZg3wqALGh2tnUALjrXp66xYufZZdJsl+L9r2iC4OsSocab
	 MLP4GRD2JEBNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79C9CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173568747.24744.11460510981605533148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7b209c1a4123ba39a273c2ba356117ad138c855b32943200d9f1f27a958148
Date: Thu, 22 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671735687
