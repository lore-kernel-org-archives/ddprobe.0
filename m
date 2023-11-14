Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE2819448
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diJtFelK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863C4C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699957696;
	bh=R3vsiVimbzK1vu34mHrsJI1xe/ZPqRAmRXU9n6UiPzM=;
	h=To:Subject:From:Date:From;
	b=diJtFelKxLGizM88sfo65h8/K3JCUQYAehI8g82zsoNc376JvZ68sW691tvy49J4z
	 eXDkbL8j0q0Ly9c0vAJ/glxdMnsN89tGwZfyEsCnZP8GzP57K290+WSBdfECk9Vlm0
	 KFXK8RWjA75olCSlUTWE3EaFHptR23hwzq2uJIwKOrGWK6G8bBC8Lcl4FFv4Mvc8pO
	 JemRFYNfuaMQcU/Nh0MN+ZHjMsxHBbcZQxuFECu7bCnbe3f/JKA///eBmuNImbzf9z
	 zRyHN7JEUGEpNouh/Xavx3BgdUc1RkvaPv4bm5nO2jvz2sku0i9dRQl7KqEFX5n50P
	 vpqeOZWuS+8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6668EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169995769641.19695.5615719459725790831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4680c01a8e6ce4d9bb0a5c7001b50cd7dfef8539ef1f45f2ec3eddd2bf41fdb
Date: Tue, 14 Nov 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699957696
