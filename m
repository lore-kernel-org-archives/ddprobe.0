Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9F6282F24
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782041794; cv=none; b=ux/M6zWK8ks+z3yoLHJ53PDwGv6CdR1zh4/l6Ac7ShDpcUe+mAr8hsGwZS6fy0GHYxiQw4n+r63LYX2LITW+k6eMX76c636QW1TR4y9779eFlzT9t2XwAw0QzZAj2M41xG/mreOFLUmCY+cnJTEngG7i7Az5gQOzM84bj7H4IDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782041794; c=relaxed/simple;
	bh=3f/AmN3+IJrMF0FqBg8nSiy2aCdSFKQa8mBo1W0SfX0=;
	h=To:Subject:From:Message-Id:Date; b=IHox4Bb9tZkBNsfhUVKAbdYKwKh8IKbfMOk7Yj5wUgC3B6HwgXEp5ARo826MZhUQ1czsYWHuuDjDLLVnJjiWE/lZqaNC/s2liWX8W9R90s4ROIqLjEzhG6WMoq3pGKG1jml3Lz928fW/4E9G/Bd6njBYmqYT8ifoRHQ/RuVHZTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoNhVdqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoNhVdqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15C2C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782041793;
	bh=3f/AmN3+IJrMF0FqBg8nSiy2aCdSFKQa8mBo1W0SfX0=;
	h=To:Subject:From:Date:From;
	b=WoNhVdqMW5EE95Nlzg7AhA2KniNerYtwYXbpL64eRVUH1QprmAZVXCd/s54pw2TTe
	 sX68BoOA0w1zbdK4zd6+5/EMIFT4Q2X8jFy+TEuVPEc/f0oufoJFFAqSf9sD8xo6Mc
	 ofOvkjg2AbnE61ESFL7NkMMPGVNiQhDPHw5hw98VILBT6gVd/iMSQx3CeAEQ7uH5hm
	 r2HCiJ2IqaJ/I3f0VvQSZILNzi0a/7F8GIvJhoxnC/g1FhLZbbFeJtftEOx4GXHMas
	 3HwdD8o8CnFiybMLaj+ILq9EbYGbI4dRnqfYJHLoN35PCYEKhfEhSabBcfV049a/iI
	 RGrAy3JQYKgfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D33CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204179369.16684.5944970017593708322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef52a4da5fa832eb8ad174f6140c661483c6bc5973a3925c6cf33be3632e429
Date: Sun, 21 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782041793
