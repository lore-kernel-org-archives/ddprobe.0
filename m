Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252C929D277
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772894094; cv=none; b=iOsQLzuJHZnFfSdgNDvNqMXDAf3pT7+Ky+4h5fWsETP8VvscciiuAMbzz5VT2LcWTuFfaDHBvGFo3/oLf6JzSChnv8nU/UfN2clxA9E8T/KebpBEXiztt8PiSudy44FQXqI7IqwjT/FRzKVTc+j6KUCgOCTnJGmGgGa9E+RFdLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772894094; c=relaxed/simple;
	bh=Q0BQ/Cnski822LU8o1RuGniIZkHMesByr1msn/GzIio=;
	h=To:Subject:From:Message-Id:Date; b=rLdxGcmw5fSvNgk3w8Y1KXQcK+5u+XOgDGTL7WIP8n2poAPly4uMPkU3SDC4BhBxZlbqxqhQUjlCgZfFbgTF7iyDPQIkAR61ScY2gAS5IPNz8GfC57Vj90IRON1Qo7scR4vC5ohlGtvToeNeg5/Ts/SBHBXuG29g/7gcWkUBjoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6Tx63jE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6Tx63jE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC7DC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772894093;
	bh=Q0BQ/Cnski822LU8o1RuGniIZkHMesByr1msn/GzIio=;
	h=To:Subject:From:Date:From;
	b=G6Tx63jEgE3DMU/rpEC026ogelb6d9kxXoL3fwFGfCwWj0IWEe++fgRgqT2XcaDmZ
	 rcGVCKmC8nEtMYgX4KwT/NJQ1VlIVIFwTwPR3+0ui/l2vROorRYJVSeGQZMVIZzBir
	 Tgq5O3yqX9FSBNgNsehcA9mkjnjllqLY9o/WkpzoWDqkRbqUx7uQKqg0Sf4Ds3uY5q
	 sDpHF0GLMcByuyuOcNrUAFErBMRhd4EgPpQlZ2/iV+LsFMvo7Zc5UGrZH5neLROs3H
	 VVDNAtkjenTtoYUzQ4956tO6+5EAPsxr5M/es2NRZwhq+d9Z70e3fowKOy+tS7y9PK
	 2wU49vbS9BLAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982A3FC9EFE
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289409361.21194.14705933634770353916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e32a8552e91414333baba4d0477cbe423c3bae879e52d6eaf25909e1b796f29
Date: Sat, 07 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772894093
