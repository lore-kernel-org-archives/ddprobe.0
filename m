Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394291BC099
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735892754; cv=none; b=BBGRUpBGzmyHJACWf4B2OWXXsWU9GpQriCugrXhTvS+LQhNFCfZiQg9JP0DwN7e7+VKMOBXs7AnSy//rKxFa8bIIZkGGbXj3lS2GS5LvQXlgq+2becosQBfR6JSFOauDxtJlCSPV6palXHBaFY+hK6b3TcaboYtFzaq+mWG8IUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735892754; c=relaxed/simple;
	bh=JzdHe3SQw4q9Z2ITswEykNPKhE/LdV/0SakDajZKlHA=;
	h=To:Subject:From:Message-Id:Date; b=iD5rCZ7nes8Medhq2wCxwePzAMFNLtsqCr2u8AQrQklRwWEqBx1QmE/pAgqU9aosC4DA4qJ/j4jxzm7arwVI84QyfLeBXtTnAzuiUfarOx5eXI2qpe96pQ2qYndsokz2oi87D9v6Z3tbaX0fLc+L8sf6/flXpvVhBDPeAEJXoyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjQH3C5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjQH3C5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6916C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735892753;
	bh=JzdHe3SQw4q9Z2ITswEykNPKhE/LdV/0SakDajZKlHA=;
	h=To:Subject:From:Date:From;
	b=LjQH3C5+E0+ZxuNeesXKrIazYFsWwMyF3GKRROGknHdlic5OOmcVUyJz3Xvxjz3/k
	 8QIcFei9LEUIvzDhJsfTVvgTyOsZ9GFpWyvlgBOLufMKtK2ZUL7Utjp+TDxdYEwMjz
	 JHWMGb4RTrXiODBGwWzlwIFL8Dr8C5PuIiKw4IWvItj3cjCohC/Tx1ssuOAQ5upJtU
	 gczYj3RR9ySxHtGnldAYH7QO2A9QognZUGM7/NBAvFm5g5yqmPW0aMlltq4fL8atZK
	 koP0cD6Lq8MZYT3dPbwwiXlNjPIBgV1qQAfxeVqZ1BxfGYgrLi/iy1TGbXS9yLBKuo
	 dL3PZq/5mX4lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9B2E7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589275362.1068.11387155829399721176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2c936e3a841fb21283514c02ef4259efb2135b47efa1c809911adef5808d57
Date: Fri, 03 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735892753
