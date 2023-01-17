Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B3DEB18
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC48C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673993487;
	bh=4aO4diUrhXsX3b3e4va7GLLMCtZFhaAxzym1o606POE=;
	h=To:Subject:From:Date:From;
	b=iEcJMOjX18BKAGPBsbzyP0N4lYLebVjm+O8xdmlKWMHXHFakvdQ2rhghOk9DU6LYx
	 Hx3sSV4SgCw7JmTzBsSoY1C1fX+MIZRAK1iWm1NAMp9qwUHEO0eh3XmtSy878MsI34
	 Ixp/N2gYL1ReoJ6nY0SAZHVoGj5ODsZOIvJ0bAAsa+Jj9JRhAOXqqvvmpYtDdkEZN0
	 rVHdO/NLZboZABvdAjRIAsv1otDUH5EJqfvXwzgWrTARcWNXtC25TVzSEMYbPR0gk+
	 eV8vEn89ZXz32JAHCpPAxo8yH/Us71rVCa9LX2oIyo14D9sjIsPBUY45eA2Q6y83gX
	 ZRNowqaH0UHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AE9C677F1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167399348739.6312.4789103288233138471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73a719b8be37149313e1bc392345ba119f3d736a1ead63ee4f5df028cc68281
Date: Tue, 17 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673993487
