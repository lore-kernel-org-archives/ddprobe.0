Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707928C16
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 09:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmD6sO3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F74C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696843028;
	bh=sdobyqY8UwG02hj5RGL0jbJeH3RpjRDX1mjfQ6X9OWY=;
	h=To:Subject:From:Date:From;
	b=ZmD6sO3ayqkRACRvvvxej6YtgeA0v/T98Zye/esVJ02ILxu7LteqU/dlpPJGjlABk
	 v1G6TlwZZ/Ax9Skta8C18P9eg3cSFDexHbIetuqiLUyilWGNXA+vPYhXwHf8MlYEbN
	 vf6fi17k43SrB7JQmLzm23MUE3MNiPRns75+sK3HL70cuCMLj33Zyfv31AslV5R8Zw
	 ZFKPktzxE0OuCvlogqY0Z85oOGP1MrSnN9SQFHc05aiaVeAeYaH/Yw58J0ZWZTFN1r
	 9O9VDgko6ckA1/uliU3yjGfIKDj33BFHTpCoOU1lFai1oUDcBQ/6g+tr2EQh+zWrZp
	 sSVrV1WuxgnFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65CAE95A91
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 09:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169684302873.22751.388683948231404047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133f1c79895eac5909670239016b618b35dc3ff8fdb348b44aa4577671eab2ea
Date: Mon, 09 Oct 2023 09:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696843028
