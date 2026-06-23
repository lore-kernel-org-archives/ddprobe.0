Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3671D30F94D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782224794; cv=none; b=ma3RG3acbosz/5qNyneTwBsE1S6Mtdi/VIwkiVLAzvhPguX+e9PaiwtAUZbyXPK+6SYMVOuF6nLBcnxxdkAxZbLP4v0IcrMcUWIIstp91NYYk/5Bwtn4WczIFt2apjKhpF+Ua5eUUVfa+ozo4wMi4vdkkgVoYyEnOqQ1jQkYhiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782224794; c=relaxed/simple;
	bh=p1V+aNb0rlpbca0pCmUkwtRsIhk3TU8Zj4dcCfTgr1I=;
	h=To:Subject:From:Message-Id:Date; b=POB0ZKaJ9VDK2fx5tq0kCHrKAmGHT2/1/peGaYXHJCKtjGflQ5Z5Zaojhhn2l2tzwleazzoLoGxMU87UnXN3NjAoubJIetPRmiQdIzqOj9s5l5rHUPlkvso9dPtkcBLzA7uq7OR59ga7hTqVtxLwbXqewcBtTKuPIBcA/GOqx6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKclrD0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKclrD0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5E1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782224793;
	bh=p1V+aNb0rlpbca0pCmUkwtRsIhk3TU8Zj4dcCfTgr1I=;
	h=To:Subject:From:Date:From;
	b=BKclrD0e7UHOq3Q6bTVXXp+gzrZugkgGm/30HnqXm8PQ3ET2QPMdb0jZDFhnZ6q9R
	 gn5tynHOW5IYlNv7Euyv0Z3/Y4X7z7K/7fDROo4A4z/1Y3NqCsX4HFJZctWDks7T0Z
	 nw7BuSk7txe/W8bTGmcful+YzazrAevi4v8ZyNl44OFvaY/sB+41SxgD8laKVId72V
	 L6/AN8/EJm+4TSc2lHjfZFoHrAnifV4apmYKXNvm2WSSaJTAZQDglYbPV89KbzVaAe
	 wMDuDkDlujrAuaPPKijoSG4V1pu401+z0Rc4t/fssi6/HadpCihbDqcLI2eBtRjgKh
	 qLSJRCeRZMdvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F5FCDB479
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222479368.24109.943032681424167170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12bbbf038fb4ea2b77fc4bd114457a2928a215b9262d705dc145094a63c05fe7
Date: Tue, 23 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782224793
