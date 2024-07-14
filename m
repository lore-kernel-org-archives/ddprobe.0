Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5B67F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720921823; cv=none; b=oZ6+HC2JqlBgV81LofXuIC27tzmqPuqRP1wCgWgOvY6QilPkKNOiS2c6GQZ01NQZq+p5KbmoxY+BENRpw6Kfyl/08dANfwCMI9m4jVkJhNmzKOihbEldk2IWGShaYYw3TcPMqbTrqqaUI745ePOP5WyFvNXClvGiF3MLap5Jcfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720921823; c=relaxed/simple;
	bh=4acIRugq/xz+hj9BIYNM4eLt+sWZ3PBV3V9bVaoYj4k=;
	h=To:Subject:From:Message-Id:Date; b=UBZW9fIb55Ll6Eo0yl5lf2bLS/SRV4UKtNvfH20LFFPaNStKOQGk9rgU+s7ODgaxnBkYSScLdgwbx2gzetoKxn/liZCQyy+S6bSzGz+fNq3wYslbmFlpfTeGYqtWTeBsgRT0CYbVmTtUZ7VeIPYrksGPHCaLaqS+lhZ2T4S8GWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoXzWKaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoXzWKaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BF0C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720921822;
	bh=4acIRugq/xz+hj9BIYNM4eLt+sWZ3PBV3V9bVaoYj4k=;
	h=To:Subject:From:Date:From;
	b=RoXzWKaV7Qkt1rmYZTaEXMnctA3qgfqPyh/rwg3PFO+B/UbyTbMO+BGzALGSztFpg
	 zFWrmOpwZuNmLyC+26IJ11d4doq8XrffZmRHpF9jWviipsEYP6WN680VXjiQhRQq6x
	 6ex/2zx+tVWvN3en9TRDmBgC/QjqsYmVfIrt28N/Q6cSf5kFyVxPXgnLw5QoN4lHw5
	 vXHC10ZpFLPwKKlG4mTFUA5VkwTIu1DL0OnDZf+74U8yPSjIjcqDICpNxi8vT2W8Z9
	 2ET5xdorPBd7jYvvf/hdnt68HPEheLXbHhC8VstZUPcWyRIxd1MKr+3kHxm70/mLO7
	 GlksAHtGQlRAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C342FC3DA45
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092182276.9521.2107541949651264768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10efdfe7436172faeb5b927db37d33465f52c3776c3454c203490263f04b3c76
Date: Sun, 14 Jul 2024 01:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720921822
