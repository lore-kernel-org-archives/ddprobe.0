Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A35C29BD88
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776696454; cv=none; b=JmfofSfXupUVd7iFLISDGjU5e81OKKxVgpDAdlLAW5lNeVvFK0xm7aq0OXUMrl6eF7EhRGopuyXAB6c6iwXNzWTIIh+n56ljID/7ErIXYP6TsadVckHuEgEX8AiH2YX3Gxa8Ir/NjlptnIb8wVPA9yz2i8Zhp/D6I9NZkYEJaPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776696454; c=relaxed/simple;
	bh=7R2tFm96ii/BtGBFjV9uaFOTlBRmG4fAO9BrQ/+6a+U=;
	h=To:Subject:From:Message-Id:Date; b=dHUrYvqEeWEfX/7SQ0cvZuDWvOD//FZvzZz+UUstvlPQ6wWKzJTOlKwcUBDU9Od6oqL+jwo7767+Bdzo5rG3iOiD0zxPx9NcBnB+Z0CE9GQveEzPFDpy4L2trkeM7cx7AzBbSHpy0uFRLvnKkPB0QPBKzq4bz2j5dEoopwfDxyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkt0bn6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkt0bn6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFC7C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776696453;
	bh=7R2tFm96ii/BtGBFjV9uaFOTlBRmG4fAO9BrQ/+6a+U=;
	h=To:Subject:From:Date:From;
	b=dkt0bn6NTbbbxBNlfqhNIQXLzrx08g+bKot6t9h20uiWyyZe20H4qObYw23zmy7FV
	 oiuuWWpR+oujFHOO5oXGnCm2Ls5/q9faGNv0IM5JUFMx8evAH/WiNa0m3ua1AuHREi
	 rGme0bkAAfW5gtRPdie3bQM2P6bRy/26J1o05ZD64FQFV/7kTIyR+z8+UU8mKNp2le
	 mJ4NihF/VrZ5OeGqlRxYGKDzWqOEOBVWGvvQ4aSDtGqhrgsAbx2Va2i5ZoJpuUVwZq
	 brr+rUCZbAmWKXIx81SfHMKbwgmHrzlWKn8uKlYBXceivcBzOAW37XYU9cX38EWFeC
	 9WygT4kRGnepQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC545F588DF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669645369.20572.4480072971605271889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bece9d89af120eea3fd1308ec2c8372f39689d476596452104c7002f67f5ea2
Date: Mon, 20 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776696453
