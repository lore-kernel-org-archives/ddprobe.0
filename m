Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED84823772
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712433497; cv=none; b=Y/n68WoSExKPwYTFSi+Yj1xTrzM3FtKnLuw6UkC5O0C/oJkooPkGCDdEKNeuVqacAwBn7McpG3GzUiThw8NXuJZ2/+q+s8gacbe8ld0pwSEkqKZauLdj4+k8R8M4vX1r2ii+TY5AIEUrNXo2Qe6eJxre7HdV+4ioO8+4lITFrAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712433497; c=relaxed/simple;
	bh=9sWUM0EfDxGbxqM/AEU8tzAGIiqKBwMQLJjLsdj02ow=;
	h=To:Subject:From:Message-Id:Date; b=hpBjNjBH2z6NlcCW752O+4rSmEoz5yWhEzbxS6oilseSfft6ame5TVq/U8Sa8JuhCytaFE+wbX2J5hHzNRvRPZFOJyI6AtVuTmLASs1vQrESESsLf5MWmr8QtOQjysSYCWXvtw9ZAZTJZT66rDm0+KvNLSK7V+VSKQbicyFqyRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2K0VZ0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2K0VZ0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ACFBC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712433496;
	bh=9sWUM0EfDxGbxqM/AEU8tzAGIiqKBwMQLJjLsdj02ow=;
	h=To:Subject:From:Date:From;
	b=J2K0VZ0OJGhEP0EHnhtazVRdDLWP94SXYnNOCCoAPq4l/DZZB+Bk+SFrk9c+DYgxk
	 ny0EGBaxabfKSxzcjrq7mSXX6fgFJKjTUeq7R8KDU5YGC208cvO6s3bI0Y5DanHbJ6
	 N1Z97DbmHju9gZ0ZrMDfhhjiQNY9GmXFv+3Cw0ddnAaPKLy6hCtYDpEMRRASCx2tV+
	 qmab3H8YHtpP+Pf1z+XHX8AV4vDTRg6isL95KgaG4C/Hw0JKCoW50aV6/Y293WusKg
	 duAf3NlYVnt3994LG0E2mEfCz2p3w0D56XnkTRVRDMHKapGYuLipd3NWyZJRHVhJEe
	 JvCX0+8xlz6jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6699EC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171243349640.14372.1961326879444866965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23319442a4371b943bc6f3f752b454e252ba98c3439d8a3b54368d455dab0d5
Date: Sat, 06 Apr 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712433496
