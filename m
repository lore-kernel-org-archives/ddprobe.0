Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD33311957
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772627094; cv=none; b=Q9zbXR49V/YFceTiFwlqlXR2EWLkz9GJRaXQ2IwhLpiVaRcDIMs8GGFgmg43MJU8nDCEvKodgeIc6LCsealsG2p7E+E7IofpQGmhKAXJSVGs/wKj9a5jk43/QGNqT6vz++zoj4upOuea6t+/xutEPmeWnqoS2fJD6lwDytuizxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772627094; c=relaxed/simple;
	bh=wMTn9LOGEvigOuCH+C2B2m6axmQa9gbGHi1Ygbc8aIE=;
	h=To:Subject:From:Message-Id:Date; b=F1xHW8d+W1jW+J3sr1swlHGYcjMcGO/a4Hc2DLmotV5cxuxEEEZmdLWbCJICJEn/BKK6biQB0oPU5RewI/hRh3A//os7YAj4+UmCYZyabGAGxEwuBovnXDsT7c5uuxqIB35dACwfKr46Nq1i5kxnP+LmNIhepNqv+MN/Q5elmfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/eDhI/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/eDhI/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83EAC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772627093;
	bh=wMTn9LOGEvigOuCH+C2B2m6axmQa9gbGHi1Ygbc8aIE=;
	h=To:Subject:From:Date:From;
	b=U/eDhI/V7MgCl0jvKWLt2mTQYMwzHutFbeuy4Hdi5sN1E6JVe9T239OYJUfWmHC8A
	 pghUBKh/mit4cHeplttoArqRL3UY4GiOXgz2Pwe6HqlQVRNFefeY6ohH0fVU3mVOg0
	 pCmXGNzlHNKNylIuQhSZ/Np52BTNdjgcaYcnUTi6UJw+qf2bZxUZ33YJ1tZ6Tc/5SD
	 eUEXcR0K3WbRpt+X+GwkstlDzNCXWjzXspWek41vFY++6WjBKy2npogvDpJxD/OBsK
	 m2qAVOHsECN5Cmot66cl/deTouyM23NYBT9la/OfDc/zfNukwdUH4CzWIqPavzwFg+
	 4yHOa0HlLOB9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB56EB7ED7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262709361.14137.9368125913041267072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1e244b099d364e8e829cff8d7c24809d934df85780a8e74e2725a4e3dd810d
Date: Wed, 04 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772627093
