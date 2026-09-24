Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6248B4A1DF2
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790266234; cv=none; b=RrBXJibGoqIZDZeyK0N9Q/dXhREfq0NmT9xswkPpOhiwNi/sU+wMjdE59Cizi+vbUEiTdvH0z+6lG82ubk9soNji1j8UObg0qc4k/NRXU3jB91Ay+b9bQsOaOTZkj8TTrgp3iUc78S17PeItC7yIHpSSHADzxiUkMFJcFzMjB1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790266234; c=relaxed/simple;
	bh=tIKDskJ93DlqzKvLUeqQmFteS6sTwygZlEA4VLSEfcU=;
	h=To:Subject:From:Message-Id:Date; b=gOPtfh5zkA8z5JRnsd7+EEl98VIV2ymDjUCdskb+LcOURSb7aktZBVCLa/ly0gd1I9WeHPrIqRZ41p4YnlMIe33BHyL8899xdkA4P4z9wptMRhltkxIwRgS/IaYAdCD/9YHSaE6WRjdx7vItCQ+z4Eow7cKltl01tXT39y1yeoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEiwcvOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEiwcvOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B60C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790266233;
	bh=tIKDskJ93DlqzKvLUeqQmFteS6sTwygZlEA4VLSEfcU=;
	h=To:Subject:From:Date:From;
	b=nEiwcvOf1da+5fWtqvDnj8bejWZ7mDNu0w1rd5Te3qsS+4CLZDJfRl5DjZuhQaPbN
	 qqOFkFCeL8o3TL01oaOT21VzoSV0j1Xvm/iXfjPPp2fdYlGXpPBgdG0RoIKWdZjW7v
	 73u4E08NZ5KqJsSn/h5VE59mG8XQ5ylj1N6ubjd1Ya9xLqatN/Xx6+1jZkG1JaIB3s
	 Q1lLgnWdnfLxBRgAaqAhNjxSOdPZGANGmBp9foeWJ0WHHxQYJDZVxQ8/GFAxqx2+mm
	 pNyAaUfouA84F9BUiwLzyrFn+afum4zZ0c9UtndIk5bgZjKYW8yLKrCSvIwHqEuqVZ
	 DBKQLoZ56HFDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC120C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026623372.28635.16077680972510948365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48ef08eeb51de82767c06ad7003c6ff864e9855e398724122ceecaba0306c00
Date: Thu, 24 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790266233
