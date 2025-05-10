Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D21E1BC073
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746867594; cv=none; b=DsdHkn1TeHRqcIWekZkw3G6zziWk2iprPyJ0EyOQ6cmXKJyXKf/m5a42IYgNs3NmIv4kJ5bxOlC56uZk0xg5dBp4ynf8+b/t/wDfFl1BKiw5fgIXB/rdasrhPoiM2q9oJrfc9ErBbcuWoQ3zflyt6IcwK4By7Ev7u6YbTABDq68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746867594; c=relaxed/simple;
	bh=9t8zxQwW6zeutSXc+ueICEIpj0PwcuH4Bpn/mPjwv/Q=;
	h=To:Subject:From:Message-Id:Date; b=SE6l0K37E0cx6z/omp4CRJJ7dAXTdiMA6eJlA1PR4ow8iU2B9+XZ4qPf5tbxhMfN2J/1PITfZhFgq73zAwx6GL8dxZepujk7a8cg1IhqGM94e9FLq5OiBczZgfAMH0z/kvlcXTqkW4oYJYuOSpTO3gqwXS5ei2/nMpLP2p2PLxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMSvU6AF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMSvU6AF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A078EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746867593;
	bh=9t8zxQwW6zeutSXc+ueICEIpj0PwcuH4Bpn/mPjwv/Q=;
	h=To:Subject:From:Date:From;
	b=FMSvU6AFFSx3k8e9MCYWc3sjdTJvb4RMgCW9nv9VBZnO5sgj54QLVXmOlSuk0wiCK
	 3cxwin4g5lwrWxO26G/fRJbY6iR47tawB+h6Jewoa+qZaNN0VAxscHQugbPktwPUun
	 GByySBHt6kF5PfhRLGvGEhhRWkEeX2idwAkv6VszNJ/s/AraXqCsWQKG0CA6YQepcR
	 I7mnkSRoh7fmju52HmHy8bgxuJeRKdEeFDPo9Gx/I5Lx74cRU50zrHvLhFlYIirhQM
	 HtVdmdXT2288Z7BVM2I5w8ubhjblkbAqEePgAaqDjgnckh1h8tvAMtoBfPb8yODaUf
	 iM43PqWmtOr3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1AC3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686759357.3550.15341447001350944633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3439fb54cdac3aeca0fe52466c298cac1200ac08b8f1d38b24561adbf2b9b054
Date: Sat, 10 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746867593
