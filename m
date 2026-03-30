Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20095393DEE
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774895694; cv=none; b=R9xX13PvVeJjNMldMEQL8SE5sF0Xm4GXNruHoPiXD5DFSODtU3gUnW1medBcrAYNvRO9ZEl12Sr+s9blFSTq3ivwDl4YxlC5j/Up6f4N3wWTBv4w/daAJqd/y5dGtbMz2mI0m5XAttSUTXFp7Hv6S0zgQZU7x4ku33pEDfH6iQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774895694; c=relaxed/simple;
	bh=h+NZltGP7HzcONLJrUfJR5Q24yrAFwjedqww0Yy8TCY=;
	h=To:Subject:From:Message-Id:Date; b=HTK01b9hoD3fSXpSqgLOQ2herXPt1N3C1bpqeB3z+j4MglrbEjPvLERDKVBMoBDfT0ojalslVB00kDVzXWwMPYS2nV8wK7zGU3BZ6KULHEvOBfOiVDIN8Jne5d6vNFBZzDLriskiEz3gea5XRqt5WrQB26YMfn6QZL7+fBEVcYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnWl8W6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnWl8W6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04CCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774895693;
	bh=h+NZltGP7HzcONLJrUfJR5Q24yrAFwjedqww0Yy8TCY=;
	h=To:Subject:From:Date:From;
	b=GnWl8W6okfVUApW7WUbwj4e1b/Ia8MjQ+HeBnhYwzPYZa8SU+d3yD06iUd7/nk3+8
	 9nWqgEVLDjEuIjx5oWlqrcjjRNnHpBr4FFoXR7yTd+bBIsRLPHs6Yr0LlP2MJaZaMB
	 ddegZYF/udae/XBmjxV3nbYQ2aLVNX8+wWbvlET4EqVE6BW+kSK51k41A3gjZ0x21W
	 oP+++rq6mIeQQF1IRcMQHx+LADi4HR7sIb8N0CYSx1S3BDVsw/H9SN1cZ3/qrEVNOf
	 KeBxe1JJVweRHFxO0uojgt9C39/8az7boQgxQi1Qa6KP+8i8oQruHmnLHb0QQrhfN1
	 akO6qcrIphrwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DCA1061B1A
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489569359.27605.14047778722928806145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55293e02bbd5bd1f22948936085b4f44be7ab126ebf0d94b820531fe7fc633af
Date: Mon, 30 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774895693
