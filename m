Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E311FDA61
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769232234; cv=none; b=L9OzBFhw+bLgsnugBRkIBHldiEjpPC4RcVn883TMWb2r/Y7YBDATxxZXmeXzLbWGzNTHYijm/0Kvt4oCE3rpyyNHYUGIn54WW8OMXbIYQjDWmghHtX+bNtr8xrjIYvU8nAeWRqyZJc/US4PvdThTB++Aa1an6v6Hiu7LXf8wgqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769232234; c=relaxed/simple;
	bh=8DY/MFRvKQuT8MPN4W7NS/VZ0jPEgPaah+VmSeoXS+g=;
	h=To:Subject:From:Message-Id:Date; b=E8EPE9pHf/NaH9EpYTnj8zc+q5Wmah4K7v+NfTmhNm1z2eXGzbQ7JlQ/YGwtrUF3u18GkTDHz3jMKmZ7jzAZysNVtqH3mdGU/RVYeOHjjLtNbdoBmOZs87yt32n2hHwVyV8M6zlu8s26j6uqnE3FnZER5w5CajCMGEy+RJgXytc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsHaJmT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsHaJmT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB1AC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769232233;
	bh=8DY/MFRvKQuT8MPN4W7NS/VZ0jPEgPaah+VmSeoXS+g=;
	h=To:Subject:From:Date:From;
	b=QsHaJmT4kESG+gZkTQWWiySftynIPS70prAWbHy62eVhvZ3+HEYOtGsSf6FW6oRMO
	 xRX5ERwKx7Rs+gJ3EbLJM9+HjV+6tPK5izGL62L5KuvIShc8zptpNTGg0DO3DF4i4o
	 T9u4MPzfPC78VRmbb6umkvQVdo/eyvzDNLKcT/6/kp2czlnM0FKWljdK8ymw/N3ABv
	 fkKd3t2PmdT7uKDyiCAq9YaXtKh+imCqaaZ+DJgCkOwsgl+T3CuK/+Gt4ZAFUVhsHC
	 DJOWQM0vdiw/G6DhcxXgsc5TPLb+TH6GAj2WqjYJambf8N5a87TD3c7mGYDmiqlSYh
	 +U+KfGGOui1ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E1ED715C2
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923223358.17060.4903953805409904893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9a69a0128fb591a87744dc4248c047a710a9f6cd4439fd2767e52a3395ec38
Date: Sat, 24 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769232233
