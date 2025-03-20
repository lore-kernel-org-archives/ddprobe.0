Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD5C212FB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742473796; cv=none; b=A25UTJ0Kc4a5zPu9VCRjt+dgyfXsAgHxaB6rDOOnhI0ZE4Js0a++B2uaLb9Xj/eB+CBtG35PUjjkqZq2AjhB1lDhhzPbtA8+kE7PnSxKDkO2y15ABLHve0Br/hZ3lgR6zurJn8l4+ShTdFnogK2ivQzaJKKHUJdHTMpN7V8X+XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742473796; c=relaxed/simple;
	bh=twYaLobixs1G8tQ2TpVXwTHiFIF/VcTQoVq7qVz1KYs=;
	h=To:Subject:From:Message-Id:Date; b=jOHs5b6Bkpt6XoNZeGo3Ahqr31I1hBirGi7BWPOt2jqzgrHlRvsrRdAegqDgnKsCxZkHK1JQhRlG3YXRtgJMakXxOkyPD00ExQZFqW9uNDIMhHJVIfy29eSgBQFC9YDG84OIdcjunjZ6d9kVSDX/yDwWHF4Y30xF1SasKDN1rJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZNmflLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZNmflLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD553C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742473793;
	bh=twYaLobixs1G8tQ2TpVXwTHiFIF/VcTQoVq7qVz1KYs=;
	h=To:Subject:From:Date:From;
	b=iZNmflLKqqoa106Npx3nG95w7wx2U000Tbd2/NCB74P8eCx4TmMYFbD83uOTkLNg7
	 S0fhqPQ/LmxINR+v6yYxHVeWJMuJr963+RET6AzYSNw0BAtXalCxqj6ietvdNjgImm
	 MePK5/XthBqtqq9Y+eCzwYZwAZvxCqjeLWiqonaqDjGlXoyMLU0fzjazKXn3rhM2IQ
	 +yjZLx/cxCw0R0jMUF27K5XSdyK9UAWIz6mgOZiz8seEyWkHrUaxV88+aE7QLFjAwA
	 Vr+EY8SlbmMa+rSpguSxnBGq34ptahVfQo5e57Hzk0K9SBx/zUKh6DH9LZqB+c8rMg
	 5EL+CDbBPYo6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2B2C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247379363.2970.2945723050364026272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6d6cec9dd35c8e5d455b4f0def9f95641a0b6966abaf2a6e36f3a98e5f7858
Date: Thu, 20 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742473793
