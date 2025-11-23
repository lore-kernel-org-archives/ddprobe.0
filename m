Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D401E7C08
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763928114; cv=none; b=fuv4+OlfXxv9Gzx1BiuGR3uqtejaW6ZggIPUVU51Xc1xDpzIu9ek990NCrIGVnpJUCdtszAlokAQqmYi4Ski1RLuj6hXW2OzxTMiSSDJW8uvQFuhP4q5YN57KgWi1cKwU0AsYeNskRCZe7ohoDm/vyoqs+7v0nA4+DZA+nPoY90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763928114; c=relaxed/simple;
	bh=9xccOSNHZu5QsYSmOqFZ6/hfN2La3VjZmo4I2CdfLDU=;
	h=To:Subject:From:Message-Id:Date; b=Rg9Ikd/Z3sf0sq8ZDgl+wbNqV/D9GWQWf+OxGWY2LiiRPZ8I/6CskFxrueVwK7z3d8EvNIfW2HMEHYszGqqM5QgMSZpafH9YHjHtE3K17B0RtyvJktqIpEudWxmaUuOvfjU6/5nxtn/pBKeVjvzAvnSsxo0PS3MibqIGvmGGBW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hy+yO6nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hy+yO6nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A013AC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763928113;
	bh=9xccOSNHZu5QsYSmOqFZ6/hfN2La3VjZmo4I2CdfLDU=;
	h=To:Subject:From:Date:From;
	b=hy+yO6nLTOOIJ5H5tTGXci0nUNWE+eFjar0wkdH0EJgTXjWQjcUkjolEkT8GvH8mY
	 Jod4d3m3JbdWLonPiHBXoUoXYXmzFv/agk5wI7bAnWc0+gsI/fDF5L1BfnbC9Ka4mo
	 B6jw5PNJM5+A4eHtFJHqxaBVldsSiO5d2bnobH/gF4eE9LeDwm6JPGVWXWEWb7Q2C6
	 rIzbk1BEMz99kFs9iLHqwjEGL0CQLuZf9c9f+WiMsudA2ui9Baur6M7wF7neGNz2yJ
	 jq6isKy3RP9jwZi12QkVUNMNHOYemBiQAZe8qQYiSV1a2OkeKcG4Rmp26RGri4Se9B
	 UUQgtaFbIrxLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF3CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392811358.29679.3320176056103892056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba5e5d25c7a2082dfd08fa4977f2e07de6e9cae15010f3a36303bd9ed5cf8fe
Date: Sun, 23 Nov 2025 20:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763928113
