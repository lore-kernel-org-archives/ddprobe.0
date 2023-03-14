Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ABE197
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 22:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE877C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 22:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678833545;
	bh=5hEy6tCQ9HI8g6wucpv2pUTZI1RPQ4xgslM2vLzps60=;
	h=To:Subject:From:Date:From;
	b=L+iK8UrPyal0dn0C2HF4xP4F5fG9WZzu2WGYZ9gHPgw0yPUfxH754CB6An4/fTErs
	 wcLFyq6WPzHG4dK4G8tmqQjwnjxlWk3IDD6EXu0lH7MHd8CnJ0b5wzi/zlWzhpHFkx
	 lxTn9pq/WhndYlP/BTTb1BtatCUpzLdRgMFXYKbG8DPX5w0u6jkNM4VPPLfFxtJPxi
	 W6UT5ccg2EcuTcAKVnYmKf/HJCsz0iFSNuvbQWxa5EVcdE3x+cZTVddRPJF8+cIulN
	 nx3Legeg2x+cMGxhmXrb0cSHyVD/ivEqz5WQOnUmTM4egTsgeFRDTQREqlSJTyQHx1
	 fIE1ZqfXwyz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79F9C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 22:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167883354574.9353.9598937279593123756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f176c9414679aa7d6a371342452c41d13e281f26ba88c9a57e9a04c7dbbd27d
Date: Tue, 14 Mar 2023 22:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678833545
