Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349901360
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avnE7HqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 888B8C433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698202696;
	bh=lZJx6RtckIjTZ8Y2DGFz+J3PiRhOVHXnLvmfI4IRHZ8=;
	h=To:Subject:From:Date:From;
	b=avnE7HqFKtM6TMsmwlx4El0okBYliJFSCyGvgsxHIYeqaRsSrg4hN07CEcmZASsNU
	 uHkahbXjbW8wmI1NianbvhvoYqpZ7kfS72SSdEnZ2Y/tarXOEMw0sYr+ojEdNy61aV
	 2RlsCYhpLLTmzWITWfjLTSz4fXU6RQThEmqZQKb/hA+YMfbjTyA4T5CuxUBtg+aNul
	 9XPGciIE1tS9u1QfQn7j6Uz0HKQJm3I8lD8B93EhSiCU/VFn3wz0oSNBWPJ84mM12x
	 hFn2YeMnzVDR412yh57G9CVWY6BE49ULLsy4aky2KpxzAxFVMjpcxGRMBplejQX0hD
	 2H3xf7et7+RWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADC2C25B48
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169820269642.6227.17970477178051144750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26edab5acf6c3bcc00551a036c6faeafa1084976dd2808d05a50dcf1b553c6c
Date: Wed, 25 Oct 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698202696
