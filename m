Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C572676CD
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746841794; cv=none; b=RKUE3Xt4u3fe7rWPwdYWf6Arv4MPSEksqjsIisNHO7ZFmctoTjn/jR1dVuWkphKznMmU/oFU4RupBVfT8fss3K3farvngVnn0Jb5Q8lAAKtjSoIcYl6kvIILegPAWiYusCH3pjm+AXEv15FjCi9R8rNWKa/SVdsZMIZFItX0/5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746841794; c=relaxed/simple;
	bh=O9TUKJjTlKamwH8GtfWwQAn1m/p83EjNCtObmfIUw+g=;
	h=To:Subject:From:Message-Id:Date; b=Z+rIz4mzS/VnjN8RXa6qAeT/+X1F/sIIBUbBo9Mib3+o1S/cUAT2YhvqokPF+SzQcLy9H2GwXlYRYIY9o27PkqY/RNJZUAb8SWe/pKXG4BvgOpVDxByi+abH+LdiJY8gXp6ZvUl6blJsd+1dcgOiSC93SAkCXPiY7LsfnBl+nQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PutA87w0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PutA87w0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C31C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746841793;
	bh=O9TUKJjTlKamwH8GtfWwQAn1m/p83EjNCtObmfIUw+g=;
	h=To:Subject:From:Date:From;
	b=PutA87w00tkRaoJWjWtrVhfcpQS0dcJl/hEI2q3YSPk6qig81kUpT2h3qVxPw4h0W
	 eaC3w8EzXtrjdnJci5W+YXcBkA9XNLR9I4LGbGdxfScCLJw2/6W4+CG3lh7vAL7j9X
	 oJVi1qdEOK6UdM0Xw+NxQ4XreiFd3tua3uOEIvW/S6DvUS6VXDrGyTYET3cLaCK5VC
	 7Q801REbP4LKDBk+IPflcuuoM1FFSL8mdWaSqrhg+krBlfbwaOQ5Hz7yNs+LmeNi2K
	 d71JSTzo3GhxHqP365WXi8dLYVUtdEvdjigVkQ1RlqtlmGTC3syVYn7yxeDxhbFsLz
	 Dn1m6jo3+YJGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E501C3ABBC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684179357.13441.14974301581451394008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 385c564cb215998785b1ffb203d259f05bc35af21ce4f32a2ad8bc2946d85433
Date: Sat, 10 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746841793
