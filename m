Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0959A21885A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762718994; cv=none; b=mSA3X3NtWt08Bg4hv8rXkSBQL/axrB7NbGW5MmSoPjavSLE/1+Vy0f9xQcJOcicit8qCZiRBQCPxRhT4W62VS4UDKcyAfl/sd7deho/B8SJBp+MxhUuMzNc+f8k+iUvkSqDOBDTZbKyQbXaDWTpSvfbHE1lyy22l85k2s8s1toM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762718994; c=relaxed/simple;
	bh=KPdAp7ah6wfyIpzKhpMwhwn8pfzRuamQn8vvcBNL97A=;
	h=To:Subject:From:Message-Id:Date; b=mxfYRuW28XJu5BF0vPEC7lfjHaaWRpFf5KebgYJCK+fhPdha2oGLFuI5NU7b2Y5ExmUirvJDWfqw23pTOTOq3azkeLi5/jbKom5MtT8b6UE3FZer7sA1u+8TIcLoJVRIhEgDQZpDaKzdSRGZVkc/nwAPDtE22PPDibtSiQyP25Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvXT8pf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvXT8pf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4BDC19422
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762718993;
	bh=KPdAp7ah6wfyIpzKhpMwhwn8pfzRuamQn8vvcBNL97A=;
	h=To:Subject:From:Date:From;
	b=WvXT8pf3RU+c6bdF0tnn8wS32Ef3AFMS2buFDXgprlrr+Lk8cFk0DKH/Pqn9ybLym
	 CpHtgzi9jJ5oMpmflKMu6eScus5bJRuDwQoV814fMCiN3AQ1W1IgdSRYaHsG5qHs+0
	 4QYkmCscdkaucrtb6vz7HjlqsFGSXBCnUBXKVxYvlCHrkQxUDfo2Raa1E9xv5DOFQ9
	 Cf9NedLIPm/B5APems8GpusHLvC7pTbPv8wcY98cwpjjIl606A8qk1ysH4FJBPXdlh
	 kwMNqd7O6XEjWhksLV0hvEHX2lH22o4F8Ur0tqEYZRAf9LidnTPpEgdH6FdvyH/ITM
	 K1XbsQUP/jWNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E0CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271899358.13641.16206289419306615782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0081c74f5546147f4e4ac490e40fc34244ae8be7e43133386e6cff2eaa9c0cc
Date: Sun, 09 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762718993
