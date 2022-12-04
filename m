Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81973C3F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D0EBC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670173854;
	bh=rFrluS6gV9BLcFd75dwq8B/bIC9VfXxbb1Rs+ib28lU=;
	h=To:Subject:From:Date:From;
	b=itHd/+ZtcoqdWqvkSp78cm3S2pxZVvK5EZ/4675lwYLaZl0/C4ZiMaKOEI4yXzdpf
	 PtX2cWfrwjGPJ4vTciKTTzhbJXy9SvRb6espoweSGnUYbLjJnWifUVR+w6bYgFssCg
	 VBAbuWrg2SzOBuz7zoVl2y+Uyk2pjEMIOlgI/Ts8P98fsYeml98mS+xJaZBl2IR3sP
	 NemwNVGoKRMYZhAyTdKU17gGljVi5d21TGDMmh/D1GNz239Moymj86lwCE6GIDgrXK
	 cKIl+zqA8bjuWNXFAISKbIN/06FOke8kGW0afJ22Xe+pKivgXcGFnyYUPLHwUCVVMs
	 JgepzhqZMW/Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55937C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167017385434.7075.14511938668899249497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1cd0dd624f54cb1ec0c3380274cf1c3cc83264b565d3b3b22dc45cd266e0ae
Date: Sun, 04 Dec 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670173854
