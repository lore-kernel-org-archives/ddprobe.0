Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1030A1548B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRVRHDoE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8470CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705027696;
	bh=/ZY3SUChI6TRELtnJIWnMT1Pjksrxf5k/Zm3rT0WBVg=;
	h=To:Subject:From:Date:From;
	b=iRVRHDoE8a1/xnS+TfU0OPEORJtz9xCoplZbXbrKCXfRk4Cpfge+UR0/jFZWUloxF
	 QR2iTi5VDh8qw3CRj5Lqcbj75Aut8zA8DcuK7cN6wbv4CiIlsEDa/5SjphPgOIh43q
	 0bzjkAY/ckBorzQmhcaFkZbPB9HgT+oewBW81ry7iKyqJRLMs9nJcRViDuNvoPTZY7
	 JOx6im/EOdMWLqWU75sDo7u356e/JQLWZhVEHAalW9/RTTX4UU/DQvwP60VbgnnTj2
	 LLKAFxwPanTpUOtN6k4MPH1zUEVZbPmzQIRBO464o0JUrgTwpl2cd+ur5NKOK1vGVn
	 /ySlXezFjTp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DA6C4707B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170502769639.8792.2608509844170475266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b04f0ce89cc9ad1c3ac37262a52070600a807d57f09c59b1d7f3d28ef26c4f
Date: Fri, 12 Jan 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705027696
