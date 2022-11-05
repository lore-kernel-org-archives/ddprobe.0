Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0ED32584
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C067C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667691054;
	bh=GfbG39ziB6Pyp3e1MREHmCavNXnG6YO3F0ntjDu1K8U=;
	h=To:Subject:From:Date:From;
	b=qJm4ldSDRc8/xbP700B/zCg+4w3X1mn/EIZzxlr3z0Z2YGWEZ+vJJ8sqiqXAaWwbW
	 PowUJLmB0Xz+8mS7M/RvuFsXWRrn6kbxf4vwcp0McyTjFJnCQKzpoc/xgxygCOkpiW
	 m/Yb/KTkxqARMuFqxY++V6zivLJSPxOWX5gdE5bC1I0iItc6dkjt68J1UIkkkwu6/A
	 +4mF+bUk4MMkjoSEKEoU2s/C7uBMOIBrH9YqzrAm7dX5S236VGstzdYsFIH9vK+bYf
	 RWjeCBI4+jbSPp7jVDqeVgnf5gG7GzP36kG10DoBtxULUo8bCv7lsDCLBV1nHgqdmE
	 EM5ZqYst1aXpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB1EC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166769105438.22675.5188937876527266372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b98e9f7cac29cba93379caabe7fcacfdd580f68606bdb1339b9dae81f35793
Date: Sat, 05 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667691054
