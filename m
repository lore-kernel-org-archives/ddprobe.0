Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA29262808
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766232834; cv=none; b=IllatIfNjnr8h9JloIlZQTsOJImv4C/L0SICgdL02LjdcjGTd9V6c/isen4Wrw1+g0s9YDis6nz0EfpFCl/xeneW1WuXDWHbRDB0RLXj/mPQxhn4GX/S7p8PU0/eFBg/SG6UEslGTsUr4FiIJOR4pfj2c41fpNVgtKcmu8nCFdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766232834; c=relaxed/simple;
	bh=tbX9fA2R+Ra53vEKWaYL6XURM30HdHkoxGfYbhSeOJg=;
	h=To:Subject:From:Message-Id:Date; b=WvWzLP6gxyyQNZnXr9bynF25DBuxYGZIOP2whDQl1+9E24jv2cIFpUPVrjUzabZKpTxkJLGVJ1YcfTvbCoASgzNZAZxmw8oxSteWqTZlZLCiB8LKGkEo4lP+XWUH8LqOWFmufABu7sORmlTUOiWGdmPg8TeffqJW++mwv/Za5Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Occ9/mei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Occ9/mei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4558C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766232833;
	bh=tbX9fA2R+Ra53vEKWaYL6XURM30HdHkoxGfYbhSeOJg=;
	h=To:Subject:From:Date:From;
	b=Occ9/meijtC6prITbbx5noePN0VlMuGnHqhc4+iX7dBGXfa7WBgPobgZQ8491H50W
	 eO4uF4q6xMXR4rFVhoiEm7XdxIVEkbC3vJ0hcoOd9t3CkOs8CmagFfDcDKtTaEuwIa
	 MYDr8T+qsJJ7E3RhoTZ6QEXEhaOefyDOTwuIa9DlV0Y8HqeWoLXW0eWmLHjbL5sWxZ
	 cmRdg+KwFQyUvX+424VX+yN8vTq698IIDbdUNwMCYj7ZK6yNixFpBqjHc9t38YgfAI
	 a8aT0i2OYhLXb6ww45AM/0q02k0axpjZs/Wqfhi9KZQZjAIIejFnUSoCrY3WVSNYWx
	 VddY//Q+aX5tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E3EE668B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623283357.12552.1175098337526182969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5d296b7c0a80a72ea5da2902723f5823947379d59669be773cdee4c431447e
Date: Sat, 20 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766232833
