Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B83405C55
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778940034; cv=none; b=AUp5Y0nTVwm6q64og3XaQ2JIND18KSsLu5fiBz50bv5q62/TAQtuBUGqb+PaotoLRLqJi4Mwx5QOX5zoS20pNa0CratYeWZxjLyJxZHsEXKpwUucHoTlOOdYxuwy7XTZYUM30eXnJJgBO6lYZmNCg3LDGQpBI3MxOKei8mA0atk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778940034; c=relaxed/simple;
	bh=ONKTLRAqLcivhVyMqd0Vb2V51gv07UBWTds4/OuM83E=;
	h=To:Subject:From:Message-Id:Date; b=LMCblw3VhHmTxz+CCiAjlijGjPJ7SQ5mXr/RVbDzdA5ZT/LtL6SIf/Ue5Ir/Ltf3C3dSQVgONlu6MkoFcL6naYWFVbqnDbl+/kPnWhVoHWXlWZfGYIBZLX74EwAOmFDpPYAFhxuiM36EkL4PezYPFJiVLBGCHBbx7/xbU2iciM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCtAkUEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCtAkUEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67B0C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778940033;
	bh=ONKTLRAqLcivhVyMqd0Vb2V51gv07UBWTds4/OuM83E=;
	h=To:Subject:From:Date:From;
	b=JCtAkUELZrMLCnskb4Op41YqWTaVpXJ44Yb6/smkR/3rCz2cHnOU+aM55qfOExU6G
	 Ege5JFcGH4TJ8/gNxR6tcDh/lUEJZke2Y06E+88O7wD7ZX/xGT2XiuTjW1doXR9eAx
	 GsefMYOMw5abGeBYNY45TeSQMHDsRhsnxnORX3y57tphU0mOQ/y7XKCr/+oGwrL6aC
	 DsLnz5y1FwQbWAnZxzPsuVwbu8bSyzwAkkuwt5S8rxxQCM/Ck/zgyViGyyk9KdQY7H
	 EGUtKofKDviOHn9WlwnZabL7O8yURKe5JIzU5tJofTmL9lB5wlTGdQYuv/itLhhps+
	 VPSnOQMvG8Tkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE23DCD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894003369.18340.10701726046617601855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb908a7fb7fd47412c2d0d3e33a951d9f970eddeb87d8c0c927418a97ffb62e
Date: Sat, 16 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778940033
