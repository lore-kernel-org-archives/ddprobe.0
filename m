Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5243A1684
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779959554; cv=none; b=Il9t2Fa2ZdCCLnpirDFH0aCZTjUXSpwxkzM7J5dbsge8vn9FVNPQDKO+KTGTm6q8d2F2PXD896+BcQ5Rysyx3ST8unil6607npB1DfiIX8GsAFilDS9ZuQsEIDffMJY41TWVad1NAsgp/GVAcN4wFbOkkd91sIS2yQoJrMkWGwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779959554; c=relaxed/simple;
	bh=xf9FwzXHCe0hXUpfXzgBh+NZmrirYwEgM6b3Wt9Zn6A=;
	h=To:Subject:From:Message-Id:Date; b=O6jRT/PujI47f3szoZvrpfYVYNcf2vx1vE2i6sMDf1tsEZrWffesZTcl/IHgQo4+WBxom4q5NI62aw3m3HzOuYPuSUzvBCVd9ezo4HOtkHaSQ2ToqlNTVHkKwgo4XkpH3B+kLRfwsLODgf0Fr0eDaMiogquvGneK+OWcDQFHTpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5z1IHY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5z1IHY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA5CC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779959553;
	bh=xf9FwzXHCe0hXUpfXzgBh+NZmrirYwEgM6b3Wt9Zn6A=;
	h=To:Subject:From:Date:From;
	b=e5z1IHY9R0t4p43SlzKwTvbjHw6HNZCqrxNoRoJmGZo8D5aJRFL80dyIaYZwIQoB2
	 D3wwLGlFe2PmoDlXBM8BZ9dD+z7Wgtha/PNSZiA1vyVA+Sn/QCDIi2oE3LYeZbgdMi
	 9E9kz/JSZFGqWzFQjB4J3C3KeZFH4X8TiLJpyTns1kApA9/cAnbhtxelr0PKsSuVv0
	 sBGsHr+al0jSkgS4HJSHJUmezcJb67vVW8iBm+FjASZN7ICN2Il5Zv/spj4wcb/Ny5
	 F29wq2HcK1eAO+rsuvz29eLdKDeuh1bx8Bd/XefUI9hN1xtJZLqZh7wTSrl66vlevy
	 /ZtvxxB1xefMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A851FCD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995955368.31775.666010089961731170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f141fbe6c82702f992b8fcb7ef38bac96559465cd8c5df7f36324d490ca7e5
Date: Thu, 28 May 2026 09:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779959553
