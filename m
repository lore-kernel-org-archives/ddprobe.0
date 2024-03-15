Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3196323D
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710469097; cv=none; b=J8R3J/sdLYYllZFbY8KMZ43kmZ5rXzT4v/D08vAr5aQ976WTX/uf9QnCN4KJK/TIbY4YEpOTOQRLnUtvX0Z4r+YrLUeLqwzR5X5euqN14IgLv7PPBQuBhqaCD940wQXKi9bP14WzBT2wHfjHTtINaN/DmzdXCEGCErR6fa3oZAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710469097; c=relaxed/simple;
	bh=Vy6y5wnHLOrxk2Xfpfcf2rYui5k1kqOGxUDtX7MRUhM=;
	h=To:Subject:From:Message-Id:Date; b=tXYXtnekTf5R2bfN3c6kcMqXINGyL75OlPa0oPFk4SFuMJDN4adVfslhfyXglNy4AUvYrNXOkzuxup7N1PfxjQ/yfCgZYEmcVGLP9sMskbny6TFIMWPF4KoILCacidHCOmOjhWWUD1+Skg1nVIgh8ZP99C0gwYWOgLpFzCfMpBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLbUh8Bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLbUh8Bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75EE7C433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710469096;
	bh=Vy6y5wnHLOrxk2Xfpfcf2rYui5k1kqOGxUDtX7MRUhM=;
	h=To:Subject:From:Date:From;
	b=BLbUh8BjxNxvmK6u1a24nAOHyIEiUEJ9ujy/t6WE1beObJMBb1qFMaGQj8qgpvjtF
	 /uLMwh52fMUWCEqOqOFsuft8FLNouAR99QKzJHPGg4KitpjrfJVeu0YiOU4GCWVpGE
	 f6xVKxSllqUujzMNx/D/D060p79me42IPsj+5CKFHMVBmifCgAufxQid+VHCTu9NjM
	 LtbWNRwby55YNxn7s82yMQdJP4mgK/Yj3PXZkEnVII2m83/Qc4h+N/Q3xitK6muJno
	 /vyzEhfIuACtyVT8YR5nTpjMil2p/dow7by/0kablvmCU51xUk7AUcsc/BANK3ejne
	 ZYhqjbt02BaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D60C54E5D
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171046909637.26843.5386003057786116496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c3995bcc5317934f0ef9135e49c18809c6e9007090357efa54544ca2b277d8
Date: Fri, 15 Mar 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710469096
