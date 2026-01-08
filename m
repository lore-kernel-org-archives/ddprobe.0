Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF4B28C854
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767891834; cv=none; b=VuMX57P45xye/52XjZCH3mx70XPg2p28Cbxqh9rDdWfzytwTmu4Bw4JCmqfe04MhHy6FUoRk+y5TL0nkLPaMWPJG3uIEvBZLPE0s/OxDFOpuLV562T/p5aPQhxao/R8UIbqryYKNSJMa9no/wqt6dL0ys8aF34H3cV5TDWcTJc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767891834; c=relaxed/simple;
	bh=OXhNFgh3kKNE2ar3l1l9Vhp5nvn8R2BzO/y7r8PYQx0=;
	h=To:Subject:From:Message-Id:Date; b=onxX+6jRZuHXMUasWeaQcaumCn+ePqwP6itLIMdSgD+wYRkFBItyxZU2vxo1bH8m7hH+NgKAB4SE2E14jtYpcfjOk70PD4eNi0Wq16Q4HUasrJ5WOzXVlZo7w9Nw/+f7IlUg30bUV+jN5x2kpcDvyWHbPHD7aZTF/saZkB6+7eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBygcY8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBygcY8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7CFC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767891833;
	bh=OXhNFgh3kKNE2ar3l1l9Vhp5nvn8R2BzO/y7r8PYQx0=;
	h=To:Subject:From:Date:From;
	b=BBygcY8pDK3N6Ra2wbdaSKBDdLEQbYFtFlhfwIS56HKgXXaZ9j4mr/DwSMwbpA/t5
	 4Vc4Y4Fv9BFP+NXtZgY3g+z57Q2SpezoXVKCMPItmLPAxZvE0SHqUTPZQ4aM5Q0tcu
	 cDuFs8vglFlKp80cCTBBmdTk1XaH5BnTiFnIfJqyebUes85yMzK/O/NACrB3Yd1UEv
	 it1LKSBIeeHa3EdC6Dhi3qWvTATggpY8U3eSNoIUvgOvCDCczI7UT/XLMsLTkvsogh
	 F+r7xeqhVJSHy+08+SWbG41DkmDZl/pq5C+PStl0pjzdz0Ek4acgraZSz/nA0nQ/le
	 GJf3I2iHjs6tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC38D1D482
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789183357.15138.15621436838745912889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0041f3af8ea9259eaf02f2f878df25a56d78a56f5a22a178973deab05760f271
Date: Thu, 08 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767891833
