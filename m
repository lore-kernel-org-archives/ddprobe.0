Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23892C80
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2A9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666463453;
	bh=S5182Q1Gz512cHLcE4XTPbxi7rA4fprxF63a6mAXceE=;
	h=To:Subject:From:Date:From;
	b=kmjzDAcz/u4yx9lUcDRbkbkVx/obNu2KT2q0+d84XfIF2Dw3VFyA+ehaVHFBZntBK
	 Oq2w5uoFnjBZcwNQlysVKbV9UMILOfT/vpjye8J8HZ+/wfnppnLbwJkervXquDrmuW
	 lI2ll+Vkd1L4/5kJk7WPPtWWxkNVENE5aKqD2R+pR6rnMvJDGcjq+193Oc4ReE04SV
	 uX5CFMG1MBUY0l7onF8FBNT68FVRjaPdNmuaoeRVzSd5lLHxHOD7kSHpmrtl6ZnG+v
	 Roszwh6tp+qy5cv2vKYrzB9hMvfpjn1YL5GGcDq4OhPWzM1PR+vUqP8LJsZlarfqQm
	 3SgdenIB5VfZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B63C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166646345332.3944.7518338935486248347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7aa070c3a6db379464aea7e223add7b89ccbb3632ebea326689ef93cebc0511
Date: Sat, 22 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666463453
