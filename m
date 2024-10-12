Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C18417B51B
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728741354; cv=none; b=cHOJTrIiSau9zN/o8GFWHK7l4TJU0lL0laGyKxcuziNviYrNBh4KEvsLeYu54dhOoXpvp+nYcP4886X1VmzwODC9ZjfvHdtCxTpXSrqK2x5rzMy/+gd8tA6LmI5KZoo5+ufwyN6nzYI0KDCaG628qsr2+DOzGUdOkbhtRt8k/js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728741354; c=relaxed/simple;
	bh=I7MhmtjpRzIXEdlxJ1uf8yla9aEKKGkLMj5vzQjRdcs=;
	h=To:Subject:From:Message-Id:Date; b=oIOBZRM30lpk09OIud2akENJJH7qP8LvuUTb+YJb3jIXe2FmAzXsU3aZ5529sI9ioHGTA52yGXdyRW2ZTu9uQN2Wgt6BM+FEq9PkzLqFChm5yg21+Q6ww/Jze2UWdAJRg/DNaqR5CSc85A4qctrFTIRpgy1wWArVbN/kD/irCRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Om65fLEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Om65fLEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F7DC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728741353;
	bh=I7MhmtjpRzIXEdlxJ1uf8yla9aEKKGkLMj5vzQjRdcs=;
	h=To:Subject:From:Date:From;
	b=Om65fLEwYPvf7QtDNoX5MQC6RxhV2LVzWVabkXW9N4/fwkfySTDasJXdZy1l1Nv2p
	 aKo3heaxAxRkZvOGc9XjPCrxiNYOBpraQYUiudDh4Gc6MVg0LDOtrohp3oPJjUcPcO
	 Qiv3vrrsfQuma5CXD/EgMwObjISkAU5Q9wztoIrQqWFt0oAsi9BsL+53sHytKv2a9n
	 Ibpi83UiZsXCGJWcu9b3YHG2QcVLg5iccIt4QMZPuwBHEFbEsfBBD5LcQzS5S2LfkY
	 chTfDGxs6lgknNjquf3h+GV/RW1cyi6il6c1vc6V1j4XLEPDJcqdJbKBUxsjIuLNAq
	 /QQaKtk2t/M/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E85DCF2568
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874135363.3230.17781521411800243493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1070671019a4cbb108379b66da044fc7acda778e898ec212aed7407dec60c057
Date: Sat, 12 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728741353
