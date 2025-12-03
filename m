Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8B12116F4
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764770574; cv=none; b=cgMFLyXwVeinrRG562jSQVCH9A8fa6Obg2sUd8pSVRkXStgBYbz/OBU268fiqM9HpheNAJB2+R/fOIfVMVZK7plfN/YGSuF/FXOVF5hlcdX3+bUhtw7fyTdTzk829tQLDkguVKF1lsZtaexc72lA45U+slW/T6N5kKayWT7bvuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764770574; c=relaxed/simple;
	bh=9aFd3TolRJhy6eKmKe0DR8iaK6iATq+zJJFV0CSNj7A=;
	h=To:Subject:From:Message-Id:Date; b=Ru9stgjDhFqU8ZOxuH8c6Qjbybpop0TRbJDJmiiYbBEW5WTGCWWrAWKQyigY4OvwEWUzzZuHAR3zQ+aax+13s2a9ud9XJIG8roHyHkZmVT9UK15g2LXxcq3aZfLFo0UQydfw9NS0qG2wf0aAaF2pBhHChwpLltkU0B5NSbPKy90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqtBkiWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqtBkiWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FFFC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764770573;
	bh=9aFd3TolRJhy6eKmKe0DR8iaK6iATq+zJJFV0CSNj7A=;
	h=To:Subject:From:Date:From;
	b=CqtBkiWmg5vqsRZFJR0Te7O1ckElzPt4az+scp8tHc3hFRnUfQSOcBTw1n83n0C7x
	 0kkQ2fbp/PP7c+9C2b3QlAK1wEHDwtqF7KnzK6kp+pOM7sWZ/J6FADV25HxWgb+6qt
	 8CVY56kEqZTwTBrG2z0b9v6LWUac3AKgT7UUpNVon3WZ+A9NwnYDPRMYFPGbffSyPe
	 U26wHUZ3YcY2Sb1qlqTPpJ8Xjjx/aOYB1JErnFIDSx8LTWvAi+LHPRoap8auSRBDtj
	 jzb9R0NXQL87jbS3KeuXsKeGJj/MQ+3XU7DVBIDiNegYnwRybfFB0wqgKJXWCscVHY
	 i+pTeFYPPF7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91007D12D64
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477057358.14197.8427149490468330105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280ee07940224fb29be02ba149e812e60bc5835e089b8f8f81b06d69dfa19c97
Date: Wed, 03 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764770573
