Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E113FE648
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777538254; cv=none; b=anwoUcw9kFs0zHC2d0rp8LBo+JG1hPgmS95jRpxIuMVl8Zt6m2WRD7zi18j12o7c7wNbw2dz2KcAibTDYxycMY3axSTwOX9sXg6GHnDsY3fLGfe9XO+7+Gh1lN7NKspm8RWsYoWKHGgjCJqdNBNZz5oItwhsYMYdtFQdOUr2YU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777538254; c=relaxed/simple;
	bh=znJtbRG18841Tb6evaaVc1jWuHBwJ+tqN0tXYMU4Sxc=;
	h=To:Subject:From:Message-Id:Date; b=S9bCBCKXYUFX4z+q9lxB1xjo6xGT1z8JQ62xsgSVD1CBOgzIWOnxHEviFjdrVGvO1InHTdesoSIFAYg4u+CljDzuPj/XB+10K/BzWc+SG8WjRKius1HLxu+F/+Zrp5TuEKwy1Ic5/hTIunVHKDuPjZsMKRhR6BpQLhv0LpmDY7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVfaYFnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVfaYFnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8A5C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777538253;
	bh=znJtbRG18841Tb6evaaVc1jWuHBwJ+tqN0tXYMU4Sxc=;
	h=To:Subject:From:Date:From;
	b=FVfaYFnV5hmisUXiIuj1B6DZB7BKbeh16ugLW7CFh6uhBZkkv6bIpO4RGIvNBqPAp
	 N7SLcH4rBUSB0yttVODU9aVzsdKKxSXRBaEeaAYVQ9Vo2ErD5N0QdYY32Src+SqKuv
	 GnOE1FQquz0jyCHw0hGFTDKmJsckQUH7LbUY/jPofdyh0hGHVuFJsdqC0GdeD1kSwU
	 LtEbhPtDUj4U0oY+cH2s/6XL4QYAPZlOFqOij1fVr2GhuhZy81SZYLV4N8jGPccta0
	 feb7xETgwPw8bVXQ2ymj/kvFmD8r/yqjypF5zCxGmKgfhho3LHrhgEoTmZHMUihxu0
	 B9IyUzIyhgTOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF6CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753825368.6981.1044506214905289619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8daed248c526f2a198182b70d457f13ab01a1b523219034185cfbd4f51bba2f5
Date: Thu, 30 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777538253
