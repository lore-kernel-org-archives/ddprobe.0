Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213591D5CEA
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761493794; cv=none; b=OfI0UNaTW07HAa5TsTqObo43YVYIhmTt8Gkj+Jkcb6sRYI/JE6rgLg49bud/3iJVL2blireVueU3AXk4Ke82hIbS2VI9l2MzbxbMv6vlQJH2x4ubbTthBpFUaHu+sSmZgCbkeC2+7xaxhYdMZEthSQPt75X/SFHYLjL7IJYkhMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761493794; c=relaxed/simple;
	bh=8J3/UE/WVR7f2+JYabLt+fw6NpDKtO3vEu00DPyCnNI=;
	h=To:Subject:From:Message-Id:Date; b=s6u4L0Ckv45PmaAsstIW/UFFyNv+cQIQSrVYc7bJPDD+K3lXm2vl3ghJHRGh67Ru+I2glpJ/JC/DS1xyhYmLoKPCEvS0SxKoy4/SuQ7LvdYqG+KfVRVS1f7oMJ7wp1BKuZKVFBocfiR12CWjX0JLrDiYqemBUINxvpo6Lx2+KsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pd3Zqb38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pd3Zqb38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F80FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761493793;
	bh=8J3/UE/WVR7f2+JYabLt+fw6NpDKtO3vEu00DPyCnNI=;
	h=To:Subject:From:Date:From;
	b=Pd3Zqb38LZPRfL+J+lKtT4DRqmIFcQeKyxsIbKv1nWga0SdqJ4l4e9OPRCO9Ngp3Y
	 5iiEHWwoTms92CBjEpOeYPd40fjSHIloJ6SV4pIry5/JReWWaVgiU+9JJIUB+lpro7
	 KG+zZAVfkxrGzEsb4i7sFKTCEwcqTASBFVWcREzDb+qWdridXNc0JPHPNX5RhgcHP4
	 gEgpk8VaLL6YWKPwNwHeEvoZ8V+45ZXW6ClIsCXhl0mQ4oayptGm9l0qaxXu9yoHae
	 6/MeRiNp7nSmsb9DXDlYmukxw1NGlJP6lDqjNw9Jh2HhZhxNi7oohdn8fCWwsAzLwy
	 oW7SXR1nWFKcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEA0CCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149379357.16256.15825827557522725765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b670acf23e66488847db1dcf89ef9731906aa1bf2624e478af0088cdf043117a
Date: Sun, 26 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761493793
