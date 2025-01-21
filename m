Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CADF1BBBEA
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737458754; cv=none; b=NtSQtzdgiiUQI0gk8ag1mjGN20U10Ac69CxDDdoTqRPXmfTvwoarELQUCnM1TNgXbHzd86Tl8Miht9acRlj9ktulfjoi+HCZNXmK1lRKYAeziGv0bt6q/2+MlrX8POh+5fdKucvq0Asq6amj2gaUDysPohOO9WtCE0D761RqQaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737458754; c=relaxed/simple;
	bh=6Lwuu/QP/B7UxZbbCCR4IcOJO4lTEjroxYl2dzqm5ao=;
	h=To:Subject:From:Message-Id:Date; b=iBJbzSKazWPBnqvzjlLdLaIf27WqDnLsNUYslW9jr5ksk+WbQu8vwUYiGoj1cY2fXgE5JX2Fk7sNoLWxQiV8NIvAVqv43gw1PDmHPnSiE08b4OV2lgNRHJCEgpoB7Iu/QqvsmZ1rb0+6nDxyBQowCaUMg3D6l+vhwj43I75Pxgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zz4lmho9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zz4lmho9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3518C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737458753;
	bh=6Lwuu/QP/B7UxZbbCCR4IcOJO4lTEjroxYl2dzqm5ao=;
	h=To:Subject:From:Date:From;
	b=Zz4lmho9v0RqwvgtXtWF/Pv2aOjksWH9Lbm+73rNULs2T/mkSiOMtOU165p2mBkvd
	 d2WGum0aZ6dMyW9Et2/EXt/w+NkE7ptp+JXoq1V7dshLBRzLdM4OCHboSuomm+KoeB
	 Yt2LpmHNsmzoC68ixs8EZKrqOqoP1xMqWERtDBHe7XKsGWoVxndWO6h9Y3LCwpyseL
	 3J2treH1S1WmqEUjOg2FQo8Qbusp98UX9CjOrEK5E4EcUJqRwxhtxjCLp5+WrIFeaK
	 mR45s0fKVdeDCwQKrd6uvj84TD/2HzesRKFZGtUq2Gu/Dmg5z5Gr54vDxkFIVPqjoV
	 gdSC8aZfM/dZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FEDC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745875358.20031.18151737175010013662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16717410a7d7db9062df23506b777f30a77306511e908c9068184277c385a2b2
Date: Tue, 21 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737458753
