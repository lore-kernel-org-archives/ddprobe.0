Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D30D1C683
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750907994; cv=none; b=YD1oqzArFroYugtuxekc5N3l2NBNnQc0OOfLyQAQgNXAwYficXW1aTLC5Hznsk5h+nSGfX6OzQZ+TDePTWX3n39HFwBpyFDGx74Y8Q1fyUQVcx/RgtFjPz361dgFJPwO7KDhKzIuK2zzWdC+cxr01g+NSgsOorbrRhWJAZtH3F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750907994; c=relaxed/simple;
	bh=pV3wJWLt1hQhSMyKADR7VL7KrSmc//Et51DZ9ggIR5w=;
	h=To:Subject:From:Message-Id:Date; b=tZrubObKVeBnx1RIPUtT9edKw24N/wxZqwBxZIn1cF8u/I6l8UmdHwCt17vvhT+z/Q9gKjWoQig0NYi9BSlEEpl8dC8dlLSTtxdwMkIiAzfIaRdbbwK9lr4tNGQp1ya3d0/3fGULnbvF4MFJK5o/+VG/Z+94RCy3G9hjutM0OgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FANYCNcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FANYCNcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CDEC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750907993;
	bh=pV3wJWLt1hQhSMyKADR7VL7KrSmc//Et51DZ9ggIR5w=;
	h=To:Subject:From:Date:From;
	b=FANYCNcbJL1EGc4wj9e4rcj+x6u1GfP0eWKamXEpGcf4Q2G+4+MVNC5rWC7vT0x71
	 WsjZHl2et5YuCa13xY7wMDxh5INwh0st7HHuXTV0t2iPxujvRVhDL9KC+gzN/tq0zC
	 8mP4tQEGkN8KnS1X7fTa+jmwOSYkYRE6FfX+1psViATzty/8YDWq5bCXZ9WIGttrhI
	 BaEBEZ6mPgb0dBwR5an/jtdQDZ1AuKrygjRAMySliJR0uOloMwxJw1wqqe4azaClJm
	 p48wgAHYVgvJIZm+TgyaJjrLYVBU/AH7UeFUQ7uETJEQMvbr/yMkUClkz+zCxruoQx
	 iNZfSpwVIoq+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F09AC7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090799357.26867.2025141433330168456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59a643754f81ac765487379a70c431c25115d638754e199e43766a898f50d78
Date: Thu, 26 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750907993
