Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEAA2DCC1F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764367974; cv=none; b=YxTqNBsbYZej6Z//UNL5EXjNRGRLINZz2qwERbsQYsNrGHZk83Gj3GVhUwXOqNjDmn0v+amOcQfXp/D3NPZ/eMf6IG6A5xs13XIpIhJ900DPlTSPu+XBeGsxa88sp1HiPThCvO57RiA4XJ3tWPqMgfhjTlfRFO7qRLb6HuSHxJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764367974; c=relaxed/simple;
	bh=wb/8gejFJurjgyU0KxkKTtRn6jI7m+8QJyOP/MkgXac=;
	h=To:Subject:From:Message-Id:Date; b=bOe6muf0OnTVhPo46kwJaTNXlc2hOVf/GQFBTuNziftbDWdpv8rKiAmtAH4oauBtGE/PX3AVVU2y56t6i4AYS3cT9gmr7jkJjqav9LmnnTXUjypQdTsqejjjUJjDmz3HLH0ev53TpxG1dyyX4F/pBD380/TU6R5fGrUPzbAiW6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDznhgoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDznhgoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E7EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764367973;
	bh=wb/8gejFJurjgyU0KxkKTtRn6jI7m+8QJyOP/MkgXac=;
	h=To:Subject:From:Date:From;
	b=qDznhgoWTKDTLldM8ER8EU/9Vg+jzir7JggLlb0+nJ8dOAHRRPLm8Nc9Sr7lTAABM
	 RPjOKCbkwW04I0CEx1guiqJ8/GJgFmS3Bzrv4/sv3+ekHHOCrw9AV7/JGLKqtJS8VV
	 YYt49krOy398w3xKw10Ghs7IU/mDBGvnhDvNNXdjCeLvUNR3ZgjJhVZZwm/mRnslZA
	 KmPVNIIRrKAbyWrrXwGZb8295fHPUTjXnbJm6LnH4fJEGWcmGn5GcWB2JJu3LzjCgu
	 LXzdahjsALuP6hZf4XSI00MCuZGv7rD1WQbitay/3XiWVTIeijulN4hUHjf/J0U9qE
	 jKZFv+C9X7sew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059CD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436797358.9205.17707820933238062219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef1910347da94f205201cdcc4db084837a4c0180082da0046d7c39d136f18d0
Date: Fri, 28 Nov 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764367973
