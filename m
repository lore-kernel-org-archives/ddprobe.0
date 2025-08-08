Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A341186E2D
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754671794; cv=none; b=BS13+tyzXwBT86YjNx6w2xKoPvst14FKbqG4zm1KvHBthqaXukw5biEC1KbgxIc8xxe3pPHB3OMxxTHuqMjZ2RSSD9qfZ9RmNJlXz6y3tkhNB1ZrFvfVFSYxR8Yo1p4NygpBlFfheDVMqBUfk/KmVtXA6vD5v4keqEDXs6AE6Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754671794; c=relaxed/simple;
	bh=EDKh1iLezFTp+V+1ZYm6fRW5sldJAPqLK24s2A0umdo=;
	h=To:Subject:From:Message-Id:Date; b=Hq9BezBsF23L9GpqobuVm/++GJ7ksqxfIEj2cnLZoLvurCZokt7R4OE+Zue89Rye7Swmjw39eZsi0mTv/gLHCN2/Qf8CG4cxG2Zdqg598V35Q9Mew+4GvRTwwXKsknhY8L3975bFxr4+qbdX7Qz6lVbI3+lFAwR4XNUZ7BCN5zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBN7L7mW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBN7L7mW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D0C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754671793;
	bh=EDKh1iLezFTp+V+1ZYm6fRW5sldJAPqLK24s2A0umdo=;
	h=To:Subject:From:Date:From;
	b=sBN7L7mWtIdbFLQ4dyzQLGGuUcZz5hQ5+x9NSExAz2+sCDylsgETAIa8tEf3IyQnp
	 L8YP/9vO16CHmZtKqcaAf1nELAUWi+1mlIjELZCU4VF3+tBSkzuRxt5EIG9UpWu89G
	 TT+eL8rAyEvPxZBNAlSec6s3gTOprUEK77m01RIRHvO43wqV46kfHdOAwhyWXUF60a
	 4A2RZ8v/EENEiVXBYDerQBQHjNpXFyD9+F02OK3SBZLd4YyHv7ZJn74xBfmLtuZ+5h
	 uP+xf89siLAAn0qfpNCR9SqpA5QL7mEtn0yGTdRHc/qqv3+Scss7ha/Fmic2zubfz4
	 tmIqhMsrAhXhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED66C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467179357.17707.6333393909632221859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b84b386c3af24eef054a822208c8a9cc4f620644434bf4d98eb3ddb2881498
Date: Fri, 08 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754671793
