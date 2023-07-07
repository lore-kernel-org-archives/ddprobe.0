Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493202F28
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCCFC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688769428;
	bh=XxUTkZ8nZG1luL79Rz8az5HJsxMEIZLRYY/gc8gyRAg=;
	h=To:Subject:From:Date:From;
	b=iiNnN5jdfo3nPcO867wmffD/PXBc1uxZ9DFUG3AQLJSmjfYNOh3k0/nDFsbrGUfES
	 qyDQ8t/tO5SH5ZPLWKd45mVG1pjitdt4Yw1xWqIeRw0VzX6St4WjKniU0Ddmm2Li2L
	 Kq/YJ/bHaUMD+VZYBnsbu1Fwv8PkHqFIEdRTQwYCMOZmxbwS1KnhOhO6FeDTv99CE3
	 RZdqHp/T+00DcCw5MPOJ9HXI3kpVoV50323LYcwt6etgmEFs+rUE9OezBmaJH+exXD
	 C1DtOqWfNGMncZFJ1Vpp8p2Fhg8YI6Gl4IFbQUJIPnhBbXRKTEkRR8SdVPNFHndnon
	 pC9pNhm35CQ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD835EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876942870.16880.4302990863618529038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab86092765579969d667d869088556b33020d1faa72465fd48109582fa097a5
Date: Fri, 07 Jul 2023 22:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688769428
