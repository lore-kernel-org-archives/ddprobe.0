Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357D41D9694
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747407594; cv=none; b=TzjeN+W7JF9xzH66h/GK20fNKq8LfN1BuQBJlvFaooVi7eNcisBMe2b4gHSxFk1Hvyu5DJ975aJHCeNTg47hboHMnVfFntR1VnCMHSi94vKJ6QdZiheu/NY0N8EleSWDnuzpM6O5UqjddrmPL4lzndruBfVCeJD9v85qa9QW/Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747407594; c=relaxed/simple;
	bh=LhWO/9Qm4VywQazXK5PinJptIlXiWZYqFtnZtQN7isk=;
	h=To:Subject:From:Message-Id:Date; b=OsKPPF1gDTmz/s1aUexZdC/iz0flNsfwIQ21KKlKicYz/TcRtzrQDKNzJ4JuW7KIepVSB9U4/g2yDEHRD+nOqs3yDkuBktKlVdN1vDDxUlQLDCH9pFKc01MDM4Hwa748hKdYpl1QxvAPSJPxUc91eU8z/3XWhx2wfvwhaYIYiXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Elh+Jht1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Elh+Jht1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E985C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747407593;
	bh=LhWO/9Qm4VywQazXK5PinJptIlXiWZYqFtnZtQN7isk=;
	h=To:Subject:From:Date:From;
	b=Elh+Jht1v+Fhko9vAXGGsvHEHFuddbClFpQfYWMiwNGMsl/UI016irThi2DP5Y5v/
	 1mBi/H+Jh1/x1UZfBqh2TVs65QdVXBwaAxaPdZMp4kUrZeIP8m+N1d6Bh5h6BLHXcU
	 oXcUfbuoqNaX3GRpKWGU2Ym92+5MnVfi6apIlNPTFdDzoihF74jM2UTFfhsy9I8Has
	 CmiT8+/lBzg6XUVSxYc4rXXpyq+LNFDQHCAqeDp0DY3nR16IYmfCtevQ12i3qNBWmb
	 9APIFyJFD/v3inR7bKBPxUUjGYXhrNj9rJ6XIAGwanZ3JYOIuH6GQHjTgPZj0oZEe3
	 88pYC+E6YG5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CEC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740759357.4692.2074203301594292867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b93aff9efc8c66f2f032143bbb3e0a798e2e951e994f47f87844be833c61b4
Date: Fri, 16 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747407593
