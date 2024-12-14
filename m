Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FBB38DD3
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734218754; cv=none; b=kp9+xMO/k+DFbvPTBdT7Kg3ezY5Na6KbbVVqMwEqmhbn/LJODnWxyEJfjkPXD99m/XIDHexhQBz9cPtWlNAGM7LKesoDDxvG9PTh3Bu+GSY+UJUJ6/v3UlPCxq8xVFYPyurJYTXABC2Urk3xit6+PQwBcsJJ4ZImvNznF2bXfKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734218754; c=relaxed/simple;
	bh=HY3H+BoV4/6dzx76FjY8EQNvr3KSuskJpLvN076as6A=;
	h=To:Subject:From:Message-Id:Date; b=IX2DZ3cZytHYyYzFxROFw/oCpjZxJ8noPZrS0sp20/mtMVPQjETu+2RyJ8FztZYHPF4t+tzQQf8vxnDIU90JzJcoOCwH/Fx5UBuYcnkt6OQHHHGL9l0bDST0FlfUryuuZQZQ4VVhxalHZeiaKNIPF6Yp/Gfx37MWfYISZ/q9sQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPLJuL0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPLJuL0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B416FC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734218753;
	bh=HY3H+BoV4/6dzx76FjY8EQNvr3KSuskJpLvN076as6A=;
	h=To:Subject:From:Date:From;
	b=TPLJuL0NQVy0OtCnSVqjgT2LzBVYrIqJNdbSpRnr1znt9DGtvb5sxP+mAMuJkyANQ
	 iOPMyuV6YgmoFO6hIu1QYxIVSuzyw3iP+CUBs6Kg7hPOAN5fPcgae7RqS3f4CLW5/S
	 nChtqiOioIIYQxmMpVEhem593GXeFlz1ZTgV+NJDAHx5SOhwVJtso8ddsA5wh/TpHI
	 LTUywsm878RQE2Ef+dzlJ5QLMpeHfX3/uM8DYKaEKseEFzsLdVMLgE2ildkUJIJq+U
	 rmZCahXBNBeOZ7V7LuBEDlMmIBuEDOSGYjjtehRaqEdXyN9a+Bth4nuS5GGmjOQZzD
	 0Lyg2DojwiXKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08BEE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173421875362.17344.18367367807241853284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68c5ccda1d32b9770450d349c32d6d3404442f84aad804cab99664bef05b757
Date: Sat, 14 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734218753
