Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D107B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9202AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671869487;
	bh=zoJFNIcJuwEyupaCnD7pzXjWg2NQ0HMSdw2lGLR/exY=;
	h=To:Subject:From:Date:From;
	b=asQ1NYXxELHTsykQHIPxmJNfLuo8AQaKYGGQ6Kb/sEhkMZTjgnrJXtY+WHYpUJtKN
	 eBPD0WiEL/DiaiPYrAFlugx+XiFWOMEvEoGM9L/VYtH7jMCdq1EE8BWxtCCeUOEN1y
	 kkkSGSkhGhrwbDUH7PT0AxbysRiw40dWk2aR53GPU9XfF7Su/qmum3Z+J6P78J0/xl
	 nmzrzYaLVDNtvWQNItHN3PLk30zkWysjPOpg3ur2dAithrZluwWkAxUwFjBp0OlJjw
	 SUVFdaCAromHxarpjDDSZyTIjatmz9vm9XR2pv4df9ZwoDju9bMykvsfVMkuuzLOOU
	 htVpVUyca1FEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75C7AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186948747.16886.5936661478124698635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d56de34130af0202ad141b9a2cabfe0732158665525c275e1bc87b816c106b
Date: Sat, 24 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671869487
