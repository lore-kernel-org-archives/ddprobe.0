Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F7F1FA7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9493FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673939487;
	bh=hNpyQ5Be5iCytW0o+8uvGUudrrgyIRJk1QNU0gnL4i4=;
	h=To:Subject:From:Date:From;
	b=aXxt0TuEXPkE2Qtv2UOafBVmt1LJlmKYRLNwrYSnPLp+9K5pudVYspHtPEXh0Z3uz
	 J3OoKrlD4ZyBh+nysjHz39bes6HRtWjyTIolvZXWr6LfUR5AZRM4bhlZZ5VmI8vMbJ
	 +6hF7cUd3Fri3GA8qYHxJdSm4EsOOGzOvRXok5GfeAWdG/2Vwn95Ss5qcj4VTC6iBf
	 ZWw/dm4bhpJRy1sZoiryenuOwdklCxLp/V+EhbFx9TxaRkBhVMECqW4UCmH1zQq4DV
	 L957j9LT6PNk7MFyC6FYVEK746YwdWfFdF/Yo1lH8tlnNYnWpa7QHuc7biQcJWhOlc
	 luS7M1lyB7y3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73AEFC63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167393948745.3143.9616073170041961394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04dc23dc9daed8a2e226a4d281930646407d4cdb4e32f3d5caf388ce57a53793
Date: Tue, 17 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673939487
