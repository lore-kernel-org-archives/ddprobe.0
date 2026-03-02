Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94DA21DE4E0
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772412894; cv=none; b=SgvbQB3ZJdvQtG9r5g5JUZEvkntfbJAXyGIeOT2SG9Vcr6b6jvU3QC2Kbmxquo8TBp14qSil0lUieCSIQHHyBB6PG6IMB+ykleTKii+10qmzXEenoyYd7OfaN/fHTy8pHIdpYtJhiKIZevmekMW4KLXwfY0kttMjfmypuBomnn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772412894; c=relaxed/simple;
	bh=9nkFBUAyLzQgvgX4CdjKW/ZABHimomG0WwCZRsKjAG0=;
	h=To:Subject:From:Message-Id:Date; b=L1e+P+RBV9/cbBr0b1BC2gTwSDQFhmi1rGCCIb/XQvquO7pIR4RFSqFHN82qgJ+VNaM1vbmB1AmGlO5QZi0/0VsmOR4NjB3w7EMs5XWtPmddREjM+KYbzDazac7M4IKhuK/fjTshkUpjk+6/y+5dHhc+qvZ4Y1RHhSutnhH9/E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbM0m74J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbM0m74J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE7E7C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772412894;
	bh=9nkFBUAyLzQgvgX4CdjKW/ZABHimomG0WwCZRsKjAG0=;
	h=To:Subject:From:Date:From;
	b=AbM0m74Jg/3mc8cvLN48zHqeJcCPYu3u6BcDe5+a0mda97IvgyVIkmA0SZTTtBQwh
	 lLSWbYT16CD0x9eIDzpgpMtmWWyBpgaBI7Zm/g0mm3Zhx6yV4BDSRMR71riKFPleGe
	 oqW7usitvoyGOWhlK3+wmDp2rbdkupQuvtum6ZmOhOrHFmo+2p5WCzf50sGtg5wI1N
	 9ufwukbXrzpo+UvjSOkNwaXxADYBRg8K4mfhA8diTJepD57mHV+hYzHCQFPhAfdakH
	 PDi/INWGjbMbehuLYybdx5RTlGG12D2ZXzM4exroEe9eDWkATLJIWkskWDlVKvwfCI
	 V//dYak0/jSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD80D58E40
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241289365.30823.17571165962442603571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518c88a8784d38d612c2a2a300c27de089c68de8be9f05db565094964a3c7f5a
Date: Mon, 02 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772412893
