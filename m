Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B240823D1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733571354; cv=none; b=jqaI/CXjoKbyvyTGWkBcjbpt6gt0O+7v2x0ELGC05wqwn+gqECAW1qriMpZZWOAzIEyH0HN5mDh6L05fWqg+ccfF7iFDycPQ4KV7oIL9/AvQkPSo9pG1zpmuP4fhwLOMH1tBIpkjy2B1M4qMRJmhMYoQ2oWNBeJUjrFuLaxijds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733571354; c=relaxed/simple;
	bh=W7oX8T2w93LP4PiTSCaNnJIA1GD9dZxWV8fDiKxfuR8=;
	h=To:Subject:From:Message-Id:Date; b=njY96ZvI1rpWr0rm9zSykTCjmfGxv4z4OOVCEulywPW9AJ2OTu9/KGN9/nijqRsDs7SzIza+WqgLhUVyZ5ukRjqkWlc9CR1T9opv8rDcEyS/gh3L401LyCMapuOMWa7ZBIH5e6N4MXGqetxSIJekJQ97OuED6pw5zNg0KEDVuso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLIjxLtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLIjxLtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7946C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733571353;
	bh=W7oX8T2w93LP4PiTSCaNnJIA1GD9dZxWV8fDiKxfuR8=;
	h=To:Subject:From:Date:From;
	b=fLIjxLtJj5eDGtwv74mcxtVtH19uZwSUkHJUu6Fy51ApDI0unstb84wYf9WPAyEqW
	 gQ6TEFFpQOeS+XNIBspI1JQo2vvYxN9bfe0pv+xTcPsFZKxyQDnIRsRe5F060pm5Pm
	 9qoXHv6hOTH4i86cwvnFFsnvjxnLR2drPRzfLqsxxGoQl0eNSgBTHxBYbrBN8JdE/x
	 1AjLJY88d/mjSi/kxM6scmo5KAJ34OK5wuo+4+ObOkk8kOSF6Kf0rwdDXYqr7mDakq
	 5Uu8fAIfoNiawVw2Zpmhvcmc6ST1Wau1gI/18cV4uJjKV3bZwhALDneRcaoJrp6Pi+
	 ErJrBaj2Nxwsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A86E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173357135362.10622.10853713207095020343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f823ee6a495d09d58744313650b613cf17ef3b62ed33342f480735f0a461ca
Date: Sat, 07 Dec 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733571353
