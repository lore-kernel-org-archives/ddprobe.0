Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4281A130A54
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743440995; cv=none; b=er42YEILWjDLwtO5YLWp6P6RPc/U3JmnAlG45cne+Nsm6XzUb/8oJBJFlM10NEw2ew06g7U7eArzwe9Ax6xt5icaHCEFGDyNkUW/8d2OtiXmUX3wlbHjUb+IwKOvF+O2+Dc4uflrnpg7XFkb2FfU0gDnuElH9BIHIJyf4JbaSdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743440995; c=relaxed/simple;
	bh=uZ7TlSETMKaaWI8wJSmr12eSV1GRlIz9aljiNjRXkWw=;
	h=To:Subject:From:Message-Id:Date; b=N3nHN4J/8ITIdPhvuGDrTesN/KHPpPj/sLxKnYz0U4I4Z7mpa+YvcNd9V16H7jYTt4lLwaXj3D5SgSgqCVFPZjgnb7j7BAe7N20t2Z/9qunN4tZt5q6aeJjBiEvNTnV4d9AtetUavpaUUa84QQHd6jz2b8j0nMHhGsn/6Ix87OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFkvLwMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFkvLwMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7375C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743440993;
	bh=uZ7TlSETMKaaWI8wJSmr12eSV1GRlIz9aljiNjRXkWw=;
	h=To:Subject:From:Date:From;
	b=qFkvLwMtwRcJCF4vQRGqFQ0NhyYaJsgzfbSVmRz5Z7eIE5mRilihgEl48N/SAAhOJ
	 PTVkF8uoa5zZx+wy3/nZbuG9T5/VD1pAUar0tZQvO5KbilZhUm5z/t9qhSolQveapl
	 CyIzMFjkvK5BToeZkSLuGCkuM+jYBjut87DC7ZfDJkD0UAuMeg59xiN5NEc1BYJ58Z
	 DexaNmhR0cU8Ec2qgXfD0mUNHFGWvX1TSRTT3KAqh34Xk98RtX5EgMnokHXADk44Ab
	 6v9PG3qsYlKeo/hfax7J32qs6E4/aut5Dn4Y8JplF9Q3eUXUKsEMkvLgIrHkz/URGN
	 2TnTDJ6t3KCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0669C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344099364.13608.2593204767168381653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccaffd823c1d13da958b2345b00828c4965619394607ed8054b4eb5408174cc
Date: Mon, 31 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743440993
