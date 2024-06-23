Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9302F25
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719118943; cv=none; b=a1LjvgCWM+nM8SCo7ffNqED1Unj8NEhwSuv0+uHRYqDMBDlE+y2wDxyzpWPamd3PqwQ4l6t1kJ64EF2jkql/F2f3lmRxx+L2UgRnSBl9tzQ6GltFLvzGtCi36lce6EryBkC8MASb2ksVclrS5PexdXJfHqqRxzflG+pmkwdLtYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719118943; c=relaxed/simple;
	bh=9yRCp+HZwSEXo9iE107U3+XRjKhZrDJdeU6jXNmcGmo=;
	h=To:Subject:From:Message-Id:Date; b=USFuWWcKFUYcYgvPB0zsRnjoVYcRziSwa/4gDJq2gO3+9ETREB+U3YE9lI39zZsD0Ak1jGu1Q0YEw93TSUqBeYnJgHC+D3gftwz2SbyfHifycBk42EHriqklDYOIW5sMsXwsjG92AWt488aJ9+FdHrGSDre/cJb6CzxVxpfDtjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkWCJ3LM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkWCJ3LM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE3D6C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719118943;
	bh=9yRCp+HZwSEXo9iE107U3+XRjKhZrDJdeU6jXNmcGmo=;
	h=To:Subject:From:Date:From;
	b=fkWCJ3LMra02vpPYMxIjOWgmGYpu+6ElvePHW2M/CyhFkqLRUmvncRYjDuueVRYYy
	 Kqmp6ZtrljUcpquHsuabwvv8vXJrM5uG41OZjNcLpb51hmQ6zJ1FV6XYsImUwCPuo1
	 ciqCzkQKyECvVHF6PqXXjSzn8E7cXRxy/MzBl8ujbkByqD0pVUdsdDYVw/LUYgIq3m
	 JXw4i+jnFuAvin3mtdA9vrEufTSN74Uzwwj4cElrtn1GDo34TcYcgF1vIpCHtDRGum
	 BEtUk+WY2gvWIRFhHLjDY+2F0mvg899CTDWU9PHHk34VCVAJ5Dza0D7Q49O2oFj5aS
	 vyJvDSOem9Nzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D872AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171911894284.2665.17291539514082778066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8234bc513a115b2108181112a59b718cf52a142a3a4f3a6e85ff012f97503d7
Date: Sun, 23 Jun 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719118942
