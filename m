Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7DDA936
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740838734; cv=none; b=eVjeiRdm2+7gzqtU8/z6gfaGOZSFq1Q0/kfb0MsO1jnYsXQZYpQT1BiZM4GfGaaA9pb6+R07eNMxzoakx13oJ/Mp05NzhwsKkhGu57gXsmvI+ABVNV+XDzY5X6Vbzn/4nwVFsxx3YboAKFdgyaQwcdhlvO9ksyAOObair88ZQi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740838734; c=relaxed/simple;
	bh=QtM+6zBfS0a0dZY5lkhXslYP6IfjGZfAs4EQdBnTaDk=;
	h=To:Subject:From:Message-Id:Date; b=m5UzUGFdUw/396q9676xgPTm8+mZUm62jCE7pEcJ6Vr9g/+Ytlp1pg0AwiAhbvF/z4Sfxeqp+xH1ZkQS1hEN780Z8QhfTM5EWGApkUBnadwnZr5Or8TV3arWYardK5w1bESPd6ZHACUukBmlqvGkyWPCDlqRfTfLbzWMFjSAxz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jn4nPmTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jn4nPmTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB523C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740838733;
	bh=QtM+6zBfS0a0dZY5lkhXslYP6IfjGZfAs4EQdBnTaDk=;
	h=To:Subject:From:Date:From;
	b=jn4nPmTZJgqHebTMzje2g5KYZPBlh3gvdSfzfmf5sBXvhWgOvPxLbSk9THuFUCAsJ
	 G9AW8em8GhlWNff426/j0Es8+4XyBAbQi6b32OPmv2xXzmNDOwBgHZTrR46Sm6RBcu
	 F3KxP6OEpjbsi2ev2VfpsM6BHVu9Z271iOKPfs3e3I7dIMH27K9q/DtL8G5XBVU3is
	 vpg7CF2tpuiSx8KSdzqbb0+Rzo5Q7r0rrlziYjVRUXvdHQYQ7RsiuPOldpY8NbWhzN
	 O2bDAoBz6P8VGaHeAY9LSkoqgBfbZ/xuqm+NH8//wajFQVWoWP2c4cWR86Y7nW6mZK
	 t79JfI/tY/9iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9241CC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174083873359.27082.12445190460522109126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9d76945359a0597f479df4c295cfe01a93957732689a8b0643ad0d9d7c03d8
Date: Sat, 01 Mar 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740838733
