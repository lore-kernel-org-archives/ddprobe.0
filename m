Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250CF1EFFB7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754456394; cv=none; b=U2NJ5hm1dUO6sjlqWV//kMkyl4u2bdE1jz/nf5wXWCdWxJPxYNnfUCzMB9tGVCa59/yaobfyHHR4pwqIbcf+wu8KB6tch+cpWO/q+6MZ2yZmgvAmYJFh7yma9adZ2uoR7wRYpO+4xrG4sO/q/hqIngoxkRqIpxkXE2z7ow99Xd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754456394; c=relaxed/simple;
	bh=gO8EuRl5EljjJULCfE0PG/rzTSc5JJ/8IVpsBsRZQUA=;
	h=To:Subject:From:Message-Id:Date; b=staQTNd+hz2HXagkXye/q6mwwqdeQUvRGRoMgnLqzwZd9cz6LCDcl7KO334jHtYODFz6CD8kKW0VE+nnJ3TbG88xwPw2pdaX95qXFQDmHfFyT0tEW7hNYrck6wsFnaNM2Ezfo35Y/AZ3+xMEZ11FwhJ0uXoz0lBxdSbFIphF0Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcBKPUtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcBKPUtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01CDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754456393;
	bh=gO8EuRl5EljjJULCfE0PG/rzTSc5JJ/8IVpsBsRZQUA=;
	h=To:Subject:From:Date:From;
	b=mcBKPUtQPaUNpLZ66b9i61/9LIuyc2+hw0EIaQ/m9W6C4xXOVzMK0KoaxgCS5+p/+
	 nY3DvwuPABiJ/e/u20tweNVZKOvzP0bpdbB9kDDOVWwFSZvvG/LSXl0i5Ez/BBWn0k
	 7rO04aJbvBbIqcYv4Dwez5SUaA+Op4xbKXcLHDjG4Yb+6A6RfZu1hyQr0av0fMcD04
	 3mciqkumIegx1FtJOJQtLjRMTcw6S9d3+ecoLKbsePB+cgjyT1F3CEhy4kQ+msXnR1
	 RJLzkSJOGnJbAwoZx0SpNI/KsqS7el0aZvsN35QwWDQUZGXGeXiRt0iohkTz1vd+52
	 3rJTsUDpxK/Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3EFC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445639357.16010.3984274733654914439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2303e8b00f26516aa375c6d3d9bcd2f2010728b9bad806da062920b34dcd4c3
Date: Wed, 06 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754456393
