Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DBF1FAF0A
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729535754; cv=none; b=urV9bMx6NBvBOWuIzznlmg/SFVFaJmV1DAKFsijO71J53tQ6Unyd8tPT9KzFzEZwO+h4ZgESsTfNQmXwRfDj5QohT9aS0ztl4uEKmmdf8Fe7tfh2yhn0k2Xj0+1v6pkXIFmoyDG9EoOWwpUo6ZplMSjEFj7I1+qtgKq4B2+zmzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729535754; c=relaxed/simple;
	bh=BpcnNaBNzrJFMNV4MU0uWiJKk+Hbs4W5EVDkHH16lvo=;
	h=To:Subject:From:Message-Id:Date; b=ueHfaJuyc3QJC2+UQ6tMLbno8rPdyOj6BKCcvhBBHeKxpPfjIUcqn9qKT5h5h9RQ1mSDe7oV1fTliVAw9QNiWt0npMdpbwf1WR1X8+h7s6+fQxexWEiTQQPiLprogZ2GH8e5RNm3SLs4twnslFk2GWSua4CSy/LqrS1vDLig2S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNmYMtBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNmYMtBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7C2C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729535753;
	bh=BpcnNaBNzrJFMNV4MU0uWiJKk+Hbs4W5EVDkHH16lvo=;
	h=To:Subject:From:Date:From;
	b=bNmYMtBQqV34PpVbGjhsGqgkwb0+Hn2x18MfLsmNWDbqNOg4EwmOiHN58TXshPEcp
	 PuGnj13MFr9NByLJ1RNOeQcdoVupA3Ut1MaWxSw/8gCgPeH3pdBZbEVElFywaIh6pr
	 Sv/CRYmZQ2nVvOyV95t0+xngC7UxA/NCZuCRk+NIIkWhmH9yMkEc/fhxZhayOMaxw0
	 OR0CD4eKH43RB3p7+Kei/eUtINQV4K5+B03O/AJVoeYhtMp5bnaBaeenP8D+Y5DTJJ
	 AhUz9BnwOKBJyL/pETlURrwGv8kqELYbD6pahiVEiYUPPyzLDtQh77fRfBKsTMpWJx
	 pj1WD9y5bWlWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EFD17123
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172953575360.12819.1138825609235447537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6821fffe81243cde54c262f61839bae57c753a81897f11e2ee6a831dad6866b0
Date: Mon, 21 Oct 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729535753
