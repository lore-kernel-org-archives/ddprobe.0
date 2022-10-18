Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9AD7B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75819C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666057853;
	bh=pvE8snws60OfvqUQ8fjtZYZTv4tMaog4SfYtjsI9JOo=;
	h=To:Subject:From:Date:From;
	b=tgV/8C7VD+7F3XQtwFSc6eDJfgW6m9GIPYPNxdrYKQwvEaKIb4g6upOqBLnO0yv0g
	 OPRyRbDwPOuotBbi6dxVAG1KSh56WJSqV9Nyv//VhM6FXDpYBESVzr9fVWFAltnpzO
	 QsdPZ6C4IQjlc+dwnkzEjb3vmsDCWNadwHCIiwaf8j/LVl36bGr/DosxBywkIukKPQ
	 wx9mReX4IYK5WkL87UOpM2oXjq+bsVQby6OUBZzb7toaSlFtcYwt1SXjA5TJZMmNV0
	 t1WSAVkynWFCYhRv8zizk7KUWrEMim2YKXraU9FDtStukaLBAEtDVyDDimsq+uFiPp
	 7WnQ5y4TsPRaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F69C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166605785334.3280.630222469125120152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5217416912952c40947c5d5392171c40c086ec79a203b7e87f02da6aabf820b
Date: Tue, 18 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666057853
