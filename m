Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157291804D
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dks2B02v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E86C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702144696;
	bh=8bchNea8sxvpZYuI35eQxK2VVPkFF9MhncSBKboaKOU=;
	h=To:Subject:From:Date:From;
	b=Dks2B02vUKrAbXS9Vca8pkWhQpsykSkhze6ZWnxv9Gb7V+aXWd3NHgOSTQbjc0FxB
	 eBGUQdN3ityD2/a7paNuq8Ae4M27L1yZ/qm51m4PaAAwQKBZiDjaL7h8s0JIu/UZG/
	 rm+5+gCCaJpkJUFESumEVuIAKUEWrIOyzTmzEi8T94cQ77LMGEOiVmxR6lhIiYp6BO
	 nRLKCtVCNkXwWm9sC3i0IBzs0r3Qcg0nMyAajtFeITCdbiGgnyWuKSbe/UbfN7Mo1X
	 O/UaOnogtI9PkbMoO1c9jMZ45iseKm/YI/UKMJwyTC8kH1QwfW3YipndG1HYT/9wD6
	 5JSMPxKyrAZCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF0DC4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170214469638.29375.16982319520120768462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6fdbe9de1a5b701baf8f06b90d88760cf9bf1cba2a835b9bcaad018e92adc2
Date: Sat, 09 Dec 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702144696
