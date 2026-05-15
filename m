Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B33A1B4224
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778815834; cv=none; b=cEB6AC2uwUEeaH265TCyJKPLUXjvqT88zeoWDkSZk/TBH4VRXMSPjfEkYZNAJwB5tmSl1TAeSVfdrr7ZgSfFX6q1aR3q9C8IuLbQ0eDaqGP2bxYt0Ernv9WgOSZNLWHBhAIBb9v3MxBmU5ZLiMgtgjHcudRqd6hWQ9XD6HDrtAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778815834; c=relaxed/simple;
	bh=f/mb6gHOIgEt0sTt3kVzrOcKOcl0PfXkgzGRiIVAxlk=;
	h=To:Subject:From:Message-Id:Date; b=h0tZJNCGRJjBIArIpZPBpeJ675JqvvlTEb5fIsjr8Wj2EGhmE6QzaKgTGhefB/8V0fTieY1do0Ry8RVCrDeyfx2oQXyQCmspdH41gKc/ylxaRGqCwU9R5xb77UZorDvpwkOr44RQh7GVwkafzi4ENkLODtiTzXOeHxvssS2NJAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGHKQuxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGHKQuxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CBDC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778815833;
	bh=f/mb6gHOIgEt0sTt3kVzrOcKOcl0PfXkgzGRiIVAxlk=;
	h=To:Subject:From:Date:From;
	b=gGHKQuxrhJ1mJ8S3o2NkVg3R7wmd+XFzU31W5bEICZ6JP75Krb9iQWoc3KTnQNgkZ
	 XIRJV+WBZc/eWiJFvWC86HYlZQaQvZupt+xQGsZWp611SO0i8h6xCUBlKDg72VMRC+
	 SmYhWvNfnd9d8p5j9dnzdIgICGK1+SOmY9TXJdNoeiT893HAJNqhTLZz6uIr3SMpkc
	 zzGiv+yyI66ZLF5hSC3FAQGv8mpjparUBZIXxdUMf1d2e6S97TOe3Pa6zU42/XJ8UH
	 Gzylqll2JZvA7uCIKP7bEW3c63itgrGdXBAJYoh6/Vt+f/yQiRjLT+YZFaSqPtqj6r
	 OZb1i6rCEZLww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2ECCD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881583368.26317.13404781476900268509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d510e59677ca4995a44cbf3d13f3b053830e81e66fb32969007359e0165afd81
Date: Fri, 15 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778815833
