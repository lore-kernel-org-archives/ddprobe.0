Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9052F12CA
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762936794; cv=none; b=QF6vuunstRlV/NpqHO4dJZYd5VM8JzldZasLPGfxruahvwn3aIrjdMYrsLEna7BJmTe5esSpf2c7oBMMcbr+dTnFVxNfA3+/CfWThHQES2EDA5uQEzVJH0R3WRq6/dGNZmUwq2qpCqMh+3RMMnsTgq/9hdb5+jPJkjJRPW5DgoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762936794; c=relaxed/simple;
	bh=wUeFc1sA4Q1o/qiMTLHdOTAUXS6zCX7zoze+mXyaa3I=;
	h=To:Subject:From:Message-Id:Date; b=uceOlBP4EKHl1zGrP+dOA93JOVFqXzr9NZ720lCzcQwqPyil5Zo76BhBkHMWW0VZSYIUh8Ja/A3HbpfhW4fKHomZuV/zl/8qNzP4m/y1jTHUAPfIxe4//wDsxHOD45rz8LCotfbUVKBnvmyWragHXoGpeArlp8dP10Ayx6/ZP4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fm4exPcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fm4exPcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E28AC2BC86
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762936793;
	bh=wUeFc1sA4Q1o/qiMTLHdOTAUXS6zCX7zoze+mXyaa3I=;
	h=To:Subject:From:Date:From;
	b=Fm4exPcSfiXUlLLc4Z/G7h4Ac5o/Cz7OadfJcxknnJS5+OZMLBlWdmb0pYuR0Z35g
	 N6AGJGww5cWMWpYzEMb4CWr4+bSpOikvDCscM+2Bav0VUTaMKvgo5ZyXls/wsnI6mx
	 pWqFbIkrkuf36AJCN5KvKh9kBsPYki8FkF3zTshqbbgjmJ574laEW8aeP27PGTN17f
	 iv2hrMPDiN4KXToNIEcfNWtSvFbsBCtAjuPsjGMfrn9S854RXhBJn2u8vSpLBhcOjf
	 XLq3Kfczcb2vqsu9oftrAgGh84XL8KFESNixSSDlK8XT4RWlT4nPG8kbVDTzrchRC1
	 eKgNEY3S0kUAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E6CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293679358.8198.14776788943996166778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f858908855269715ebcd06544aadad09f7ecd59ec348c77cd7f1eb174f9e4e
Date: Wed, 12 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762936793
