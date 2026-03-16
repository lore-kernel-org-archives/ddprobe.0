Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D84176FB1
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773623694; cv=none; b=YfQcUPTqOAFPOHt+WJdZn8CjopNRqu6gtjFZGk6bTmGv7H478d9g70a55ZBTZsQsHy+aagelMWLw6Bjxx7r2diVJ7R+EKONVdw8o04IsqTXmttuMHp9IeWT6O1g7jaWNXoaaTSMwmzbS7vMf9ZaTmQ9bpIgtkfmJP6hrsGkCSWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773623694; c=relaxed/simple;
	bh=YA3XMtpHbAMqFkg9qSWx5ULwjabEZNOPaRm+mCxcqD8=;
	h=To:Subject:From:Message-Id:Date; b=LmpXp4YKkJg+vz37w8UhF/wiGxBkBUq8vy+TSoOh7s53zgyN/zMJUowjzhDB3vOxdfPRpTqBHLdKYj/70O90zY4m4B8qrF3szl1gqqlWl0q6bOndrY/faIOtrfVXUCxZFoI7rfLzg8Aqly3B6UsgLKgagqSh10d7WfsT0obg2T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMwq52rI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMwq52rI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EE9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773623693;
	bh=YA3XMtpHbAMqFkg9qSWx5ULwjabEZNOPaRm+mCxcqD8=;
	h=To:Subject:From:Date:From;
	b=RMwq52rIT47fFVO0yPcyECsVffbKTLBQwc4kcUQf6+WNVTyoGTvodF6VvLB1xXK7J
	 5OpT0BJ0yqMgFKivPkRozIji8LgC5tEaSORB77pyiSAfNflP9nAQeFR4av5B4ZxhDT
	 PFK1Wb+lstIed2a3D7HwdKrEm0qix3Z4djLNTgIlDT1kJ0Jt7N0JUaprcubVJA17eM
	 Ht7EZ+/ksRTWNJNWIiOjzi/4ZLEzlHHpixKwjVLVVT87b39JpcyF/z1C+bP2wUeElB
	 SzQb8isQ7T2/CZqdmuoOcWjOOXI1GTx4zbQrU8k64i4Tu+DZ2e7UVc3f6JEG6GF25l
	 TYHn9eN7J5eOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1710F30297
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362369362.3820.4670218088218335284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a502e98934def9a8695a50809b351da1c218496b5483905cf96109e80b75bf
Date: Mon, 16 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773623693
