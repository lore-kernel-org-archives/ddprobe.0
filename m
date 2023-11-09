Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AC01118A
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+U8lBYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9427BC433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699521496;
	bh=La6gdBt13h6P7MpQtQ3PDhIZNMZmvCCj45QBZ5inNQs=;
	h=To:Subject:From:Date:From;
	b=M+U8lBYXw9+pWXuV0ObeKgzFmREN/iSikMTvckVkWRrrxgbwd+s0SB3Axh1Ue+GsJ
	 +QtWqBL0IYv6Dig6ZeJl69jdRyM1YgKI8A2z0RA9L5vFbIbm7zPSWtgRLwI4oE7ZqN
	 C+Fz9PwOK4Jx9C3F9G8vvmN1G/FcDE3pD4Klv6u9d0k0Zxjy87hFmJmJ8Rxp+ZNfSL
	 oPjW83tHNuATUd2/ALy0T8g67H+xeOOt7BXIwiCFVUsfRFq7NhST+U1jK58ZcBP59h
	 CYtd4lU3PHv8dsPo/jVLvM7isR5YKGDIN0fbMRk7guS9UvafIncGm5iD+XyrO0iLbX
	 KT+SEr8CH/atQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7404BC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169952149646.19113.6568484076320885349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc6e453bc4624c437878febe12f0276ca132917620eedb2f633dce06c61fc5d
Date: Thu, 09 Nov 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699521496
