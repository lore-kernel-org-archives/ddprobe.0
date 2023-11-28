Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105AD381B8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phMjbu8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8242EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701184096;
	bh=Z4vKInRHZoa+2LGdXPkg+cP9DcR+DEf/cYAhmucvLfk=;
	h=To:Subject:From:Date:From;
	b=phMjbu8cZmc1cEV9fdl7Y5GO8Hkjdq80IVAooZT6ckNY8SbH5ihsw7VSBSs+YJQD9
	 dSW6KaM51CJs/WznGqUXRNDZTi/A4onOdh0MjoAdLSZ3lgtGbN3SojfTOeEaXbnNdV
	 MGhUmaOntsI95WJbysKoZHM5rMLsNkqCfVxfe7EFNzAREshsJ3tmHSnLBpWnPs3G6H
	 9Dr9hZmPCysvfit7mzYWX8yERzggdORZdozl51GUPBp8/zRkSuHFIyEfygJd7lVQbo
	 6fG0g4VeI8RI74ytARrlpVKUjkfEetWRj6N/GZ+KWQocQ7c7G8eahORpV3VsT3j5N8
	 TyZeoBnewuklw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6801AC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170118409641.30531.14988965635172040227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87f6672ffebcf21b538bd60c1cdf086b890cd8a0f3ef74c310e2bfce2a85e500
Date: Tue, 28 Nov 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701184096
