Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536C4B647
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724568954; cv=none; b=NHS6Mvg2XPswR8Gb5OykeoAuvzAosNYu0yU0nL8hrmitboVY+Wnq4uD8enp0udh5JC5TZPiaUQp2R86stSrS5rt2YAU7jyDJhcb+NBajxvbwk001wZ1DqeN7X0xgs1jwLA70OlM+At7ylsi3dOc2Ok/3Jxx/RjXW12VqO7LLl6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724568954; c=relaxed/simple;
	bh=Jsvsmp/tfYn8q/RWo3EYLdQbntigUBPSK3H7nWedCUQ=;
	h=To:Subject:From:Message-Id:Date; b=l0EqIkcYQu2qdOF4iKMnVqWKZY4gZ3kf3KVi36iM/z9gKWGQJhk32H4haeBj75hd9Hwd4oAU4AJw5Qza99RgbMs6IO+zCUXOPNaYm5bzRNDEAJvc7UNrtPZVfSbReffJsLXtNO38QHK3R411q2XXFZmck+THo4WgR6lstSjcir0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4UJW8y5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4UJW8y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9268C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724568953;
	bh=Jsvsmp/tfYn8q/RWo3EYLdQbntigUBPSK3H7nWedCUQ=;
	h=To:Subject:From:Date:From;
	b=a4UJW8y5gX0YTZGfQRsEae5mVgraBLsGjAjfdJrHKZvadhnnY50IIfnhMoMf7JXrj
	 Y0JA1Opv7pp2IhLxvpuTfkuIqFfAcX/UHAZtM7EC6yY+dON8lQfaseDd3bXLBIyD41
	 lK1SjV1DF2t+E88vJIEE6cfkiDv4CxTTj5uoWW5Nc4TO8iJUtUfVGuAQlxusJR4Brw
	 VX34b9H3YWpQkhv1Yr+8fHLtuzgs8dlSzpLiK2weQtwW1R7PR6eRsnbr/ZuRk1rkoU
	 5049phg62gvhqJ3kz5sTqURQYt5U5gepwW0Czb6SIbDoQdPBDL0H+N9bvkd6fCtYqf
	 q8+ISFpBPXyQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E193C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172456895362.28543.8305017368632793117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6802c7aa762f937f2c86b5e6536b7b11e2dda38f9d7d1eb9ad596b10a23caf8
Date: Sun, 25 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724568953
