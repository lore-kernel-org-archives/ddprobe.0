Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260901E4BE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766033034; cv=none; b=OM4v3JVpmTO63efYO5dQYhraumdkcFNaBzorJIx9qnQ9hcjVm5YFgj4D3io2tyIuHpziT1vWNulwf0cAdqCDMVL/XWRTWVGqPwvOqYdFc3MF7hHfmDenSjpfnL+GCMhTzUa7uAnYDgKmK5eX2BfNRgsdnGUvsKaQSY2f7L1TzTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766033034; c=relaxed/simple;
	bh=MLJteNwdI8phmixTIGVQNujjzr4EW49gEFWpmlJWGMM=;
	h=To:Subject:From:Message-Id:Date; b=J7uSccBQnNcVB7Mp2LZKd8+kDYYtF7nw5hRxUvgTW2eSF5jli56whlmmvF0iRhO/zongNu/ndjqnpJcXJPsB8culRpKTgnCQlpBrU7N16kYxHbxZBrOU1A4ZjwjyLLt+zXWGL1V1aAhTkBv6PHE7EXg2D/SsGmn9WzO+3yp97W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7Ync3GT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7Ync3GT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C03C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766033033;
	bh=MLJteNwdI8phmixTIGVQNujjzr4EW49gEFWpmlJWGMM=;
	h=To:Subject:From:Date:From;
	b=H7Ync3GTySv2VeiPGjb3m/ByWNQ5uJ5cA6N1HGRWF5JQDyiigW9vQYso/DGizoKIp
	 9SJp1xmUxPlWMUNV3DTMBJ3Q3WbPgEy6VC+HeN3b967AdJbGWXtDoNffU0dGyufSId
	 F+Ec+fjJw+E1jvtnkaeNuX//O4V05NnxQL/g0r5x7KGiDdLUHUofOmsrj/hMCaOl1E
	 VyUiLYC8LtMfDcQhW3MpHTQPNK2bLrr5Vo4z9NYgly3F2AYgbkTXFMna5pYvlV5/in
	 0smqYZMRUGnDwkG/FLajQV0ZtgKaQUwSxiKAwba8CQ4AxxzbShqBkl1+ncONkk2v8Z
	 P6vwEgItF0/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D7DD68BD8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603303358.17123.1447255696443768719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e028800c51d74f5cf8e9c5d922c5a0f6045981570414ff327251d5941934e445
Date: Thu, 18 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766033033
