Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F361FA2
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTGRU5Jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 854ECC433C9
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699067296;
	bh=RphU7idPghUlfQ1OtvsLdtBj+FdX1K7JF5qO/0c8PWg=;
	h=To:Subject:From:Date:From;
	b=RTGRU5JxQerNZgUxeTre7k3R4hnjh0hq52lH1UvpY3rgHXoqNwjQDPlTsc9rlJN8u
	 Xl3G0tO+RY7Y9J+qAeLmPtg+/C/TigUwuT54rVN3PBAtEjsqQAxMciKmtbq35jFQCv
	 AWSPuEzCNQitUatRITbPUBN5Qdq319oQXFd813fSzwticBC1EqiVaX1clffxiR53pf
	 AHO4EAx2VvLEVrp2sRFSt8fgCKLt2XyVPdHVESTioGjH9osDxflQYEusjN5tCQfGGb
	 r7NX/MnkTCNZaCIhNPZmQ5/3VDq6Hy3XpQQ3vVA3bSLP3Cjf00VigJHPZhGXjsJHDb
	 Tx+IXp1KImLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D346C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169906729637.2176.13138213498951728095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500465a03947317aeff58c0b2fe38554de64541c4fc86ea45b450f74e31295f5
Date: Sat, 04 Nov 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699067296
