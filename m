Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D59B2D8DB5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763493714; cv=none; b=hMM8ydq8dw06vpJOhVJ9Mps5y5DlKrJRlHVgYuGhEpBNsxiRDcxRwjnjpkNKHjuMoFFFpXSgH2gK9vj6vRHIuvqEzCfnl08rFa2Kt27uTydiM0Pee0oZDj9NkDgEfklPVOwMxMVjgp3ufPs2q0BLDasgfFrL0cphBzi9xo1+dUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763493714; c=relaxed/simple;
	bh=goP5NK8q4BxwSTGzTWHrTn1PjJU65VA4VXBl8x4JXZA=;
	h=To:Subject:From:Message-Id:Date; b=Rj1hXN1zgqeYKDENoxD8qsna9GSWrevZV58vvBYtJo8wRg7amaxQ1/rGaOcTIFwI0lWBGWQ1bIuunr1/qwtuh3NGpJ856CGg7SdWe7iEjRSSX2Nvvt3SL1yoXRo+Uga1WwN+0bG7UkBXa5UiOkateLMkQoYq9lrojL17e9ecKqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDVscvKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDVscvKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8416C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763493713;
	bh=goP5NK8q4BxwSTGzTWHrTn1PjJU65VA4VXBl8x4JXZA=;
	h=To:Subject:From:Date:From;
	b=NDVscvKLdcO6r7E+embrYjaFZvHHqWCOIhV6GZ7bJLR2zTb9JKbS6JuFHGHNPtXip
	 VgbUmZoP2ZFOjMgVQtJoeTMqIa8/o55jjL/pgRjfj27dn5gJTCdzNQe2/wcEHTDDyE
	 CshMOpX39AFfurBxfWbQ2hUCPbB8lQqeCK6zqCyXs7GsV8LZDfeF8y18ZAUCiTT8l9
	 oAwht+biCHGrCVM2za+iqi1MoT5QdhnOVbYLoZqJyGWgrezi1Le96Lx7TCHBQf2WhV
	 z8U/DYB3WubDqe1dAo9Nr2JuocIvVNcb4batMNzXhJ0kej4WwFjkDUBZbxN44hX1A8
	 IeAG+PjdzxmMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9070BCEE350
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349371358.11843.8047856575286570948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731eaf7ab06a180776d87771d9848532c834c979f13e27493abbe49b7438017d
Date: Tue, 18 Nov 2025 19:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763493713
