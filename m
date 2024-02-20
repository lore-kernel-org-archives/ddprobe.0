Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031606BB38
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708441097; cv=none; b=hz0LabpJ+sUhPcZ/yxXgVF4o756OUZ/ACLaI7JVcW+uwl7KFITnqddqXC/zBg1z0i7X9R6HOtGHcDBZ3Qy/4XbQZfsloLr0lqYa5tUViet1rhnrpOxIsH6ODwpzfRDv3R7WtL/niS/+BhPybTeY7t5O0Tq5DEp2JbITnnkIXPSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708441097; c=relaxed/simple;
	bh=7B7sTKJCJSrZ7yp3x/uV5m7NjfTMPw/G4v5+WYjut0s=;
	h=To:Subject:From:Message-Id:Date; b=Aa016I1GrIx4cUKd7lhm32rbciYSBbchzVPevLuSfEhX3T9OCIWW/ojXD37Bkj2JQimWXZdn3osndr5CGU5l6OLZJBJ3KiZkvgaN+VGHobnN8mmLniDErdXD+9YmmvvmPjBuHca3dFel/5WNaR8cbHQLBYAHp8SsZJ2BuzPwtJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhvL9bks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhvL9bks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A7AC43390
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708441096;
	bh=7B7sTKJCJSrZ7yp3x/uV5m7NjfTMPw/G4v5+WYjut0s=;
	h=To:Subject:From:Date:From;
	b=XhvL9bksvpnD6KFDkSXcMCiaB5dOdD3UVLDxbOqSHv8krM7ONRLFktBC9xw8HCnfZ
	 NfN1F4OdyrntfFYVH5ONTvbAKpyQGdN++0xIvGfpWXI+giTj19JTaoqPuLKLVWVdt+
	 6bwW49WQhkLbMrm626vNI4mJFvzm3TFLVE5nuQzTEYo679GbbvYD+EXOpB/vgks+M8
	 kktqihb9H0j1J6JyHvEJ1TqphXNEn5yprxINNSdCEgUTdcYZm4iXGDZmSjNRaDwcf/
	 u29OuDIvmoUlDTht6CqkJAqs/y8xxUFT1HUpWAEo+RdQgTe3fYZSXpyU9aK7Ty54S5
	 n4ugS/znrsarw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60797C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170844109638.1231.14204755043319639029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7783f796870a78dbf5a1e6a4823ffc57ccc75d7f017687b82a825fd946d76ca
Date: Tue, 20 Feb 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708441096
