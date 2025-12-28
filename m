Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DCD757EA
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766944434; cv=none; b=OnxJM/8hJ+RqZ3n6CepwjQf4H1E13DYxQneyggU2J2tXLkz+nOD3mFFL4omuH7ep4z3hKSNJ8uuM0ltPom0nigmGkoq+DGpIouXgNPJo8JQce3lC20fIcNIu95hDLkoWCi7OHhPZCsm3ieLwgZVLQI6RDYX8F6xPxJ517Qd5+1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766944434; c=relaxed/simple;
	bh=ogWq5uU5MRuTfbZVxCRJ24sKNPoSZ+v2m7XSepCk7+I=;
	h=To:Subject:From:Message-Id:Date; b=GBlqhscVIRvi5UZTszd2S8z9wGHLvg97hCwZUT0y/9RE3H2hhVLVPwlW7IDv23a3NYg8qb/JKCmsctSXlQrZPkwtq0GJfSxjrXVP4CYNRlEq7rkD9k3jZsKLxi7uCjqIAH9h6PgvSjroXK//R1bi1v7UB0AvolL9shIVon3SKG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaqQE1o3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaqQE1o3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3EEC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766944433;
	bh=ogWq5uU5MRuTfbZVxCRJ24sKNPoSZ+v2m7XSepCk7+I=;
	h=To:Subject:From:Date:From;
	b=kaqQE1o3u/aW/zjNhW4xnyDC8ZzGYJQc7BjnHBTmPJ7SBG4A+8HrHWwDNdD1+Tpkk
	 WeO8BkwDSJnt1I0YLJ4p32J4naRZf0szTeTsnJy+L3cAojXsECF6uXQUIE31V8OphW
	 LN8821bAX7ZzuEa9CdHJP+GBTcT/jsidbRZYSeShJO8O/gTx7NVDEQEmd+cC/BxdUh
	 YipNFiXAbxNaRM2GYLRE2nVCsHPghAwLzJ0/DOPJrLdtGO13IVFxxDh0i02rnk3PnC
	 WBPQvgkjY3B+LmzLJYt3VJjbU+ccs7OCdT5+kvC3L35gcvodV2ONi5UD+uNKrU7b56
	 rtXHZTmhziaUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9843EE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694443358.10456.7725984040651149552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d78355292172be8ac01d5813065e27b94c3d7ca52c91debd1057a2993555fcc
Date: Sun, 28 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766944433
