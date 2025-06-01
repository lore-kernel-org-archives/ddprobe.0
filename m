Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E189156F28
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748802594; cv=none; b=fPUp3hGBk02VYVmrVEortlkmJJ9XDoIjX4zjqEkwDqsUqG8oDrjFAkRfBfNWlPM88WBVKxNncj9N21Gt+nGe4XD1ss8Yv2WH3qpAEx9WOKULVWn3BUYhlAhbVa2Zd6MvSVss/PEoxYzA864oBqLJeojn2bLvhwatEhgUaqE3RGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748802594; c=relaxed/simple;
	bh=7eEa3XMaGCdEkVCZIaHsp/SN0Rbp5UYJOPcx2R3+aF0=;
	h=To:Subject:From:Message-Id:Date; b=KwKdE6uZ+LV8tJ6/i6pYbuLAbVQmB19ymWuYG/eHFuKj1DNSerQbJQOqRkhEcbqHukp2SbaEiBxSVE913Ssd9aZnFzheJkOuA4OSLs0WEBpRBZr0/t/5waYwA4gC5PC7TnrdekrE8IkuUM1YtCW2VnDChtl0s/rPCyJ0/zv46ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzEK7hFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzEK7hFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA33C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748802593;
	bh=7eEa3XMaGCdEkVCZIaHsp/SN0Rbp5UYJOPcx2R3+aF0=;
	h=To:Subject:From:Date:From;
	b=pzEK7hFPDrmE0096E2W/5fPgSC90KoQq8jOmTWzJX8If8/leJ4HyDnyEwFUfBNsTA
	 cWg3Bh3d8joVvjj85Q/67i7taApduD4gHPo3BpQtEA1/lDnepVyJtnW26Rzkw6Nz2w
	 QkW6v8ACj12mX3Tjqk8vbDA+LSCnIn9nR8Mgcu40eLXZDKl9uK74mTuMz1575eoigV
	 ADd/veEhsqSGrHGO0hLazNi34SKKhLJkh4D3ZFheUuxppT/33pwSZxVwlYLs/njkcg
	 B+PedNFUHPeat3X+EPfCYXCdGmtDioeqFXoepFhwwD6fhz3cTeDx2zd+xv64Y7ePZh
	 5l58lKbgUnUfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9323EC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880259357.27136.9184267364832645420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f047d4e9785efa97eebde1930f7d4c3122adf948a4306a21b2da2387cda77549
Date: Sun, 01 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748802593
