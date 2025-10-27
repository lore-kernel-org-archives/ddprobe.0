Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2920C1553AA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761533394; cv=none; b=adW6k4MaE0Ww4i+N+WJ2rimCaX/sUx2yqU63qPsDbZ1YkVx9i2d6PLd5hCD1JMCKZ8bVzmZq0i9OqJ6+y033/laCo6fhMXwE9nik3FKtgG0MUzp5PrL7WLfC+3JzvpVT8w4ZGkl7atHjoP2s8Kc6gK+hO9j0zzCosG6iy+2LDgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761533394; c=relaxed/simple;
	bh=53HiOCtnvuEUVbKcHW5P7FVisJfUfDcTphR5EayIUyw=;
	h=To:Subject:From:Message-Id:Date; b=U7zOG9dAAcHgAwO5kTvfvDt9eVBFedoy5Cx7eZze0jI5poAt1ERoAH1diWPSaJqIf1N/fjDHm8d3sCrNHlNR+ODz+rfczjja3mkrxDuMboALA4hM6ZxRQN4RX0FPsyqSpnnaTcMDyx8QbKznWhfIpxwrSurzr/ib/X0JQEU8DbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGp6o1Bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGp6o1Bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54A4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761533393;
	bh=53HiOCtnvuEUVbKcHW5P7FVisJfUfDcTphR5EayIUyw=;
	h=To:Subject:From:Date:From;
	b=dGp6o1Bg6omR3e69dzz7Eq1RfmTR6NRdRKvef2EmoQg90vnDXDEqDZPQYh0TSfuDw
	 jKpcd75oSjpaR+UmcYCWEtnAakNUpM7BWiEFcLAYBEQ5wITL7Q3DRa0TIDQoOHHYEj
	 UXGElxD3I2wZ3VT0rTBTApqNrSVo2va/alboePFudogMsMmFJgsGIh6CskJUlKsy9p
	 q+VFbwCS6fk7WonWsCvOqzB+fDb4vJZWO2KV62pxyQMqpjuPBZgJVZwhL4qzC8UdCI
	 Tn6NYKyIQG8FyKECwtdQGgP4pEewkHxLpU5MdhjgdSr2dkn87aeuD0c/ffNBev+q64
	 18e/YZ/pgHe7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E9CCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153339357.4712.10698784213019520733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bbddeb409e8a644700327a4ca1755ea78aa62778712c82bb3643db407b791ed
Date: Mon, 27 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761533393
