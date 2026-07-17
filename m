Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34159384242
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784282914; cv=none; b=f5lpyDjw4dHMNKRo+t0vXe1PHVcG7ahUxNWYhB2Xr38qxIBPch/dLGaLT21TAmiTmI9Jt8dI1zXsJ/XFSdq4RONEwzlcOpvuDptpTKKXEOJ8He81lMrnyC+3nQxPmYRoVN13VMpQ1+j0MlRj6q3fG2o7JlbXWX7POR6C9RWfVwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784282914; c=relaxed/simple;
	bh=xBLqA0o9cOPT6cWFFn2cKLTLQU/mF1BowKKOeuGbbz8=;
	h=To:Subject:From:Message-Id:Date; b=VnBHZEIfqr2WvhK+XhQ3OqgHxv1tDNIKD6IfDVI4HWNYGnLP9BxUtP8NdyPu2FkI1DIQDh15HX1VK2kBDjSyrRVW9d9ssYdwmpHkCaSAu+TWjO1T5uj6yo5s7xyplFMDmtBZOx8ULC3HXFlNTc19Lkrh4iPPizhr3j0qCNOr3Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kigsGTPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kigsGTPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA00C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784282913;
	bh=xBLqA0o9cOPT6cWFFn2cKLTLQU/mF1BowKKOeuGbbz8=;
	h=To:Subject:From:Date:From;
	b=kigsGTPCvUtxRkfI9sxy/yi5O1Xk/pfzgKpubIXue55XJdjacpQgTs/+W8SG9iM0W
	 osJLW0afRjds5bT3FGR1KYpbV2Yg011yBtgQMwSV/CSj8fpUW4r2XlCqUHXi+ygC/s
	 gnD83wbSDydleqLSBkUdfLhADys1r3ezV5WHtt3Bwqk+0Qv2nK1wE9I11zlA2rqWgj
	 ym1rAlG8HJ7prHUD8+f9A1ObtoncAjyxZvgRAjWFtR6HNwJr10KNJBqLPNWvj4Mk7m
	 ExnserR17Nrqu6BfSiLW0Ik5uKubXCNMGfsfApHeSprVVcNz0mbXbGGP29EHQ0iCBe
	 EbwWJvHOHq+MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A916CC44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428291368.25890.17697050181614835358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357330468d79e87fbcd2b3c167ed87d2825bb889a175e780b86dfd4b5ad4aa79
Date: Fri, 17 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784282913
