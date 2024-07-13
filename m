Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D0710788
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720912823; cv=none; b=EZ36XcHWpCzodtCU92FwEaIbENUuSBP00oFzdeAtN7MCaRy1Vdw8O2n3D+ab+arJL0KeW+8uPzLYKXV8a6yz0B/9VIF1PDJ049+9fbOK4om85YmGFrgpxwG5hUJT3j07z8zi5HFhEjXC5FBuXTzzpJUhY+cxr5dG1XAkVwW1GkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720912823; c=relaxed/simple;
	bh=NmLb5FoXBhEq/UlIFG89Au6CuFDvbMNsimd0ULDYkR8=;
	h=To:Subject:From:Message-Id:Date; b=GvyxgrU2bv/lJM2i79fN5GsvkVZSVp6t4ceBPwKus7caQRKndefHZauy98J8GCGQTqAEBWGfwv3coiDm1HfpkxbPV5H1VxmjOAQMzHXH8XQzClKEfB+OkMxy9TNgw8jqBUy6K810ZRbwbWXSuEAZo10xtmoYyat8PcZRu/S3DMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwzAaxSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwzAaxSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE43AC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720912822;
	bh=NmLb5FoXBhEq/UlIFG89Au6CuFDvbMNsimd0ULDYkR8=;
	h=To:Subject:From:Date:From;
	b=FwzAaxSRlsx58jRHWAlJUf5jJGN5H5Kjv2//uouZKDikkKTybJ7ZxhDuXQMLJ4SOd
	 EfXvh/X3T/TZleUs+pFnZRG+8lyPVkUP38TWQlZxCyhSEA0DyLVfk3oIfnNZ+P9kOn
	 9iUkfnGfBTWoBO66+PzLocGqAFeN3ovJEwviUC6Uq2ueKOjZ5GWnumUFu1jJpb+V4/
	 bn8Xa0TU08Rg4KZ7GGwaJE6rGcZ+CAgEvvSuFn01b7kntnhClfBf+lBf8mLUSGJtH2
	 vdCJoSdBP0I1MQHbYvgv0TT6mDpCIU91JRiHjf/mU9FbX8TorQj6UYL2NvJTOH03uc
	 U4aUaG5Xeuukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40D0C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091282278.24384.4943280178584406230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61ee4ad7a2c8b4b55f39979968a57aadd6e645852c5da973265e592a43ae5e7
Date: Sat, 13 Jul 2024 23:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720912822
