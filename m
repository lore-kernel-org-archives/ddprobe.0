Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CB12F28
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733702754; cv=none; b=e3TmfUS1c6AcvDAF8ev2QOU19JrXyMrR71LpRoYUXVcJYVKZpwJmoGaoLOSL+JRX6uuUM5IiwxdtodC4XO8xCqqyZEMTwj8/lTqBRSSrfP1jwuV7qthgkdB/vEZOEUvWkv8r+iC1JTwjabKVgw9cXMT/SpFPgH8seWf+ENw/NsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733702754; c=relaxed/simple;
	bh=7os0NwXb/Av27v4f1T2kCxV3fLLyg45nfvyyAZCLm48=;
	h=To:Subject:From:Message-Id:Date; b=f5rOAsOeHDAgQ4d5h6ON2Xu6pJX6u3S0cqvRNAb18kXRp6r0zN5w7EChI/Q+n3AI7Cysp1qEU3FP7jnEhkmu/XS005vwC9YWJDwsi3VQgizxKDuMHBdbDbsAv8j+j8UW5uRWPfJMPVjKh286fLMilh6n2Au2LFy4oyCLY71Yn/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIlQYtof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIlQYtof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF994C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733702753;
	bh=7os0NwXb/Av27v4f1T2kCxV3fLLyg45nfvyyAZCLm48=;
	h=To:Subject:From:Date:From;
	b=qIlQYtofqauge5OMzQrJW+oB5m7rB0kRWLl0veaEqFk5Eob2jefPGxft+7MacTozR
	 vordKRlRc3umDlkBBi8U8f1r7IR368bE6OGFFOD/gbRumLA0q2kL1vnL2/p0WwS8G6
	 8/u1KwTjvkU/eOfk6MBlGZzaBtg8wyOGplh5wsGqP7tjw/Nbj0oXF3r6QCDggQ9cyc
	 UvLQIccp5eUi2mSqbdSJlWL3+yv79ql4nnH7bmoF4RgRMeFsqd5QlEZh+v9jem9BMY
	 eL292A055Q6YRWkLknpq/dIqKs8bqDOGq7yjpkZnCWmxAQsiVGP1TbeMrkLW+ChD5C
	 YNI4iG48k0jlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A1AE77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173370275358.28625.9799615238134140168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e87eb536759b6bd93f3e266899c97a4816756c22e91a2eb48a812894712955
Date: Mon, 09 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733702753
