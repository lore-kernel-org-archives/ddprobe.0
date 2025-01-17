Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AC118A6B7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737096354; cv=none; b=c/pij3Hzr99SIcR1lmWhmKZvTQf3MA2qtjEC2LV2UXxTp+sjX4FCR0dn/r+HpaulPSFvrhPynU6eNt1LWCYOEMGoQTqX1HihVfTkqkcFh6acfpUzEeU8HiLCoxCEX6LKV8phMEKcGqmYtszkz8YQ6MRFr/Q7f1lx5SWV/KPFu/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737096354; c=relaxed/simple;
	bh=SjoGovi1v0M4S9wzNESqSqadsC4DU2us6d/e6mrs5Rk=;
	h=To:Subject:From:Message-Id:Date; b=Obp6WSl4KDYMZYSC4j6sdL3zrah8LzzzrdWV83WshJlGVaAkogM5DB1BuE/ivpV4WmDpIW+wOxfGk/ZS3rHrAYJ/zW4t0xtaZCNML0w1kSUXnrcQABJPy4LmfLIYx9Whg4TlgdXPd4v2BnIVjfZ5O84iY2L6h8P17AryaokyEgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQzfNu8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQzfNu8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CCEC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737096353;
	bh=SjoGovi1v0M4S9wzNESqSqadsC4DU2us6d/e6mrs5Rk=;
	h=To:Subject:From:Date:From;
	b=qQzfNu8YpfuNxC6kLmdwvLWq7z6CT+MpUk6ZpzoDcADX2Y99YblYBzqdmE6Y1HWtM
	 oFHvbQP6WaTxNsvk5lrSofuwuTHLhBaN6jKbQ6w9p7xMIHGj0x2QVwqtdLkjqHv9l0
	 zinC4atfN9reKcf58FFZVbFquyKpuwvHx/PEtkxQaux0BSgBTgbmbTgTj3aYI2LXB8
	 COFOZZ7LVYRzT1wD8jBApL9eL4P7otR+cRse0m9cRYxyX29xUfcN0GE9af4haVYiwj
	 KZQiQoNehBEbCgHHqMi+h0hU2VtjVCE6sAXmvFjzDLRBLbUgLt5DxI4Jef3t+j7D3P
	 099qOsUG+c6xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F56C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709635358.8109.8778450735597132956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f17a0253de40d4af858fbaecbb6949a6ddcbcdda49eb1993bb59f1bfbe800d
Date: Fri, 17 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737096353
