Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D3026AE4
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744464594; cv=none; b=F+0vUyU5QYfcl8FsHWxtVhkbV8/C1Q6jfSD8KvVv2b1Ozro+cFlY0BCiqQyVHBTGh/KJslbu/KbyOZk+B+tn+bYNRXBbYATsOTXIeDEyF3/5091cLIBGtu//QBCsQ3P8QPGN8dXPhsKc+gq3I7lyfBhzzVx6nl1E+ynV/DpI+20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744464594; c=relaxed/simple;
	bh=eEVRgzTiP1xhLfBBCagDVR68LBVQcAMxvAOEPUEiOtw=;
	h=To:Subject:From:Message-Id:Date; b=XYrQKh3FlB/lEvtPFvCWfd5LofX+lAjOfwp9oclUXIxuf8/Bf1upJMEuC/7qoAreKP/1oi8Ej0Z84sMDU5AobiyYOq31tIrdc6O6MuyVSyAh+J1zu5TogTjB4pFTdaeUJig7HezQ+uQaak1Fh9GIsZikMrDPDiK7UWB3nG40fak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYNRqbQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYNRqbQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA499C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744464593;
	bh=eEVRgzTiP1xhLfBBCagDVR68LBVQcAMxvAOEPUEiOtw=;
	h=To:Subject:From:Date:From;
	b=GYNRqbQC/MAuIyy4dcHVGsrEJOI/NrLnqoO2Xz/wgPWrg5f/O+dsTILbGtRUjha/L
	 bs/ixghKwO/OihElGinqYkSvxaCXme9KHxgIr4yASXhk6AjIy0qINRwp5TwpAO/CFu
	 dbSMbjmi0AyjCaRA0pmuWeiv91dnWXgeFuNM5Dazds+UtMm1/ECDhaPAyVhYiQK3jv
	 2q0piztVqM43lsADRmZyIQxJ7Na52HIY9Fodv1SjidYxWf5FI//IPHfP5ThuZvatvT
	 xTwsPpHCHN2iMiGWH0YZ/sNkOgzT1Nnc5pTpo24ibGI1lIbyZp3w34VNNNtvfG0tND
	 uRt7xclNtS2Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9373CC369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446459359.17885.12251526793433148797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839f9439738296a23857cfe607433df27e43a3684ea57d2782ac5399439ae955
Date: Sat, 12 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744464593
