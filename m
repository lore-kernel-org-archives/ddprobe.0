Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D228C0B
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739949535; cv=none; b=AFk6QYLZ5QR1M6cQMFWhaMtQIN9d0lmSAuIR8v4+nTrw7DyLyMWDg+dmZRxMhXuKHjWHCHw4EhOuaIJ3RiO3he+7rGrPbUnwU3ELSGmLroCMSeKOflPToGpXqDXqVKe7+z/s6g8Zkzb8KikyqmREggrvqUsvRcY07hH8SdHEu6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739949535; c=relaxed/simple;
	bh=J7nv8rc1sXOeH9C10eRQqh/efWa+/V9Vbgdy7ENMoYs=;
	h=To:Subject:From:Message-Id:Date; b=B5y5yJkmcDLVNq2Odq8oYBKINN+ZhopTYpXb1FcGg4Yun2uQh1rhh7B21/n8lc35K7rZr+tO3yefCQO+W07DvDPvjyARNrYMwejhf5StscjulMTScj4MIMLSqcxmbXs4iqvIyIcUwCOyD0zfHdyErGEbDwEB0UyNg5g0qXaHITk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EE70cdgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EE70cdgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EEDC4CEE6
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739949533;
	bh=J7nv8rc1sXOeH9C10eRQqh/efWa+/V9Vbgdy7ENMoYs=;
	h=To:Subject:From:Date:From;
	b=EE70cdgxdZawVueaTnYG3W0L6+R5n2dUopuaXw/W0pkX6eY65ulSpjEju6WtQM5+H
	 BRDXBy55vOYY3Yu4vyHMVcuKaUnMSDE9zXf0E/YpeEnv+V342qOy/XqsY4bPmqpy10
	 h47N5rB5QJ5bv57D730iNFznN+6Us3obld6seTn7exhdIi95h+wmslvprGvoI6fiAp
	 Q3fkYa8lb/EGQtS9WGYMqjcBsJItl7Hhd9sK2Yr9/PkzC6blcLn93lK1CcbnH+/qVR
	 SdiGbbhdNn+H+6/ZzsB2CXkOHWA8EWRyG3aP+yNmcbxW8GypQmClSxrDu1NItqja/M
	 0Xi4h7YMuTYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BD9C021AB
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173994953361.15062.10833738899652524324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bab3ca576fbe74d177ad76af59fa094265382d8102badacf330e2e91844f5d4
Date: Wed, 19 Feb 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739949533
