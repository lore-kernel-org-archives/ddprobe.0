Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40557359A81
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783059514; cv=none; b=iV5a1tWOeRbnY5dYHoYQkvbq3t3qcxec+sgdBo5Q3e/6zdLkCLmv2aN+pcUlhJQdypmy3L7xnv6rNUtcY+qGl3cQe2rc+QQ+CAxK6+pfJBgraNgosMZ2dzcgmNCym4vQ9H7zVjAD2jQQ3JrSQVxm+yOJYequz44C4hqvcpNeDjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783059514; c=relaxed/simple;
	bh=rk+Z1l8D/ndUpo+eHijbi5+G4+x1GRfatDzIg4r2uFM=;
	h=To:Subject:From:Message-Id:Date; b=hA/hu7jDAMGP52b/y2CoRWOb8BSTxf5VquZvaYhzJTGdDAE6FJxrjhNzSivvdZWWO8cibltPOIqwoVJtsicEa4aDYu3CIlFileK7+Sme3CjRIsmlktgpgJDrQYaAFlKTrFOTvrlDKrL368JwluofkI3VhW5iDLt+/HoOiB5tbr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=op1uF8iR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="op1uF8iR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E061DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783059513;
	bh=rk+Z1l8D/ndUpo+eHijbi5+G4+x1GRfatDzIg4r2uFM=;
	h=To:Subject:From:Date:From;
	b=op1uF8iRUalZ4YIZ2fzpRUXzJ9XIVGdUTvmnGy/9brixw4+A6y7tCEFpEMYRVtjW6
	 SBbIInoEw3/RNWDoO4ywgqKLVmLzo+EtlPnLuw2+nzp8UC8QZt56hJJBOEsuMnFgfY
	 ORDz+wmzOcJ6sHECR5S/YMK9qSJ2jZRngmS+Z/Q6G+bHYgeEMjK+RUde5srvZLaNed
	 EahImR3OxJP7AqOLV3mS6TmN/XdIR34lFv8EBp6/kPNkQg9AmlZPkuGFcAzOoyHEwV
	 VdwcMzuGtxWoqfjodlBsdX+q6YMN+aG2LEtcCleD7FAeE8yEeyGbD/XDpSX2WLlCUP
	 eQOHpGmisVNnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CAAC44500
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305951371.28316.17448109506537333959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736556c074842959605b22cc49361062c9b502fc6cf27af21b2845cdefd78cb2
Date: Fri, 03 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783059513
