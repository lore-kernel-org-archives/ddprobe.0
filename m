Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD7F158535
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759684794; cv=none; b=iloaLMVmtIM7IfHYXH0ifgqV66kB8od8yflrPF400QySs0dhpEOo+z0RLhAveABa/ivpQt/BUG4o5ytL1C/uGy+mCneY1kjht/0kcRUiff0z+v0vg02b10rnaZSa3TXq7Ng2Df2wHlt8X4T73tHvxyAbnBHHJtzm7M67xWdSfz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759684794; c=relaxed/simple;
	bh=XBTbGAYClBmdwPOQTDRJhFKh8GSkioTjC0V38PJt4c8=;
	h=To:Subject:From:Message-Id:Date; b=AwLRNkCjSKNplUhjlw1vr7ByquJ0+MLt5vFE/MrzrwO8MT+yNC+jZ4AiJRPlSJiTAee5l0POq/kOEWrTrFLRxscd25WA9QIOM+SFoJso0hgwo0djMc//y13SPwANB+t7UuDbsUju/lvthQtk0DDt2bjesk40JBqhU9PgSpuM/ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgLjqtQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgLjqtQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D5BC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759684793;
	bh=XBTbGAYClBmdwPOQTDRJhFKh8GSkioTjC0V38PJt4c8=;
	h=To:Subject:From:Date:From;
	b=qgLjqtQ8P6mSLkFyAuUyYCBXVssuG6gIJ3Ha8uIj8gLwAePE9+iNiwhcTBNFZDwCC
	 C6XxQk3seOsppXU1tT0hRKvBcPo/zu2NZn9iiMJtTESlpu9K5zVqpyah5fLpgV2CKT
	 GUIzEi5pCz42djaEskHDn+ur4zNe+90kcY9JeimiEuv9tmsMgxWxnLhIBGnGdTfMIe
	 xJHULTOjIwp4sQDcLyymgM6qJrOACV6PpkqSmtKzgsX8FnF4EAo6hXDvuOe6Gx/phm
	 6Vm2kQFglt9lalhcCn+3GDeV3W+U1p+e1nVNQG7D/n6q9CL3G90oS3cSq+ALsR0nIW
	 LI08hMoMsc6dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD68CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968479357.16824.2744328352866067715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780014479ae2b88d8fc1484c958fb12dfb7451de215a4478655d70de6932d6e8
Date: Sun, 05 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759684793
