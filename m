Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2135425B099
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779091834; cv=none; b=sngp9he5Hxbu4/nSaHDIsyH16ipAMVPGOKFSDCGOArMdtu44Fnv3Dce8x799LNWMaSw9/ktDCLSo4X3o3yN5XV9knpUvDMoxlKoonIE7OKLZeKoGudDxpIIQAoN7cxLp5XRXPXTm7pqh9ccsQxR6r0mNg1udRF++9u5MRfZ1OAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779091834; c=relaxed/simple;
	bh=wtOiABWUKbCQRlxlf07n/FsNXLCbsW+Tx1dTJo26KGo=;
	h=To:Subject:From:Message-Id:Date; b=De9TMcPtMwu82ghK0/RU/ghjndK1q9/UJpb8ZTZIVWYU9Z30N+FXr6BbvhsjR5Jx5feklG1xPn0cWEbLY7lni6nm7NadckNFft9XwWb3x1BXTuZe3ly/KXovpo8y6ciktwGS/+WkAxF+V5/oW1cut6gERrjTiMBLvJfLxiCKQj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsBQANW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsBQANW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15E3C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779091833;
	bh=wtOiABWUKbCQRlxlf07n/FsNXLCbsW+Tx1dTJo26KGo=;
	h=To:Subject:From:Date:From;
	b=PsBQANW90nANuMDHuaA7SiTCYFjt+EODYzkfyqbQc+KKA5AyuS4jCeFsxTGXMTOt9
	 MUKEJVugyM7avJYdrIT3bsJVZWL/tDJHyDc3bHUUxkUxbI5mrvG47ZoBZ0Lxy7+l0N
	 agLYYjXcNQSJnXOmzKbSeALHIV3Od6ZWDMSHXX90H19fumTHGOTSmx4O+ybuXJlCqX
	 dtjaW6JYuyDEC3Ja3AoKz8Lf7z8sejlx/aOPa5n1tuNvaIP7mwWzFcvTXXihfNni/5
	 yZnjIXuVM1EWuC+fdEzqjwCh+74I3c5H4+G9P2kjelkT6TYcVP7O4nU/nQw5SLbni6
	 vU9SwVw+hki1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA917CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909183368.460.12937343203644530362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc2a56aded74e26ff92374d336d9df516090c1bc71ac32aba7cbf1a4e9d44af
Date: Mon, 18 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779091833
