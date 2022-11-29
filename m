Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3598BA28
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC83C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669759254;
	bh=9e4v2gXdzqP7+E9HR3rCUB6FOZyxXImjAAen0ZK3TRk=;
	h=To:Subject:From:Date:From;
	b=rdKZweHl9R7IXQ+eDgcj+HuhS5No5ONYoEBrJfZPeDDavZ3Iu+KurYwbJQ2iPmSUk
	 Io5xq3KLvY3PyFz47frWEFkw4XsXzlp6NvXcKIq7HZT26TyBA7Tnymy65vM3a+rR81
	 QZIkoNQiq0wlBxYFeMgPTO32gjbZgCa/tq6nbA1fr3tL9b9XDXqAaNYF9u7hviJ5fm
	 CX7+ItNVU26OZqXLL1wv0sZlrxIqYpZmRaCSOvBeN6+tIsbdLqDyuTFXZWX6ovIAqw
	 nxa9ODtGR18J97+FcQdEhnppg90h13Rjza+Omle8/ylgoHgZEPPAWeTTRm2MGKE44N
	 VKZP1QOCueg1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5326BC4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166975925433.17470.11947108473341465330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6dfd1bf9c8ef385eeaf0afa1a9c32528a0c673b2fa5a5697ba5edae7804d4fd
Date: Tue, 29 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669759254
