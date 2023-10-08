Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54823FBE3
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 18:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRaB+PTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDF5C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 18:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696790828;
	bh=n57bJPVyfIz/lAt7mGKamL+i+UmIE6usOnk2gg+Miro=;
	h=To:Subject:From:Date:From;
	b=IRaB+PTcQC+N7MALE1tMccDZrliTalUbe6LscplRL0FgOMsghZ4oMWzeCl+O/+wCK
	 /+6xapI5qMS60DlYQHIKuR8xdJ/Bmk5Iaf9uPmAerXL4il0vVSB1V8EEPNGoEJfWSN
	 g08VoTsWkuiiyjO1eg+cSSi3iSWVWSJWb1191Q3xDyUC0rU/1p8JFgFmmxCVa3aWA4
	 eb9sZ6J+/TxGxrMxCGFm/22ovUuQhAh4mblF/7XXYq2QPwjIJhT0/3yNE16qDUoFOU
	 kXoaQwSVMRk7jW2wUov1hyv+JESzPZhJl2x5dkX84e9rZppnuu9s3JbHIBGz/tr37L
	 WYbO0HwPR1lLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3C7E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 18:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169679082869.12749.2524223950974540269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78abffe0e6ef539de23b478f1451f7ad3e3a3328111e10d8a55eb8e9de9b0283
Date: Sun, 08 Oct 2023 18:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696790828
