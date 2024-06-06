Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5568D13AD38
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717667243; cv=none; b=kQD452P/hVZDEtWXvkCXWuDKtBkXJDegbqBZUkfn09tOgcP8w0S0LVLtTmCAp0nxL5ZJn1/Ws4gTLGctDBkOX3Xnb+Y4Ou4c4CeOMWMtlEHADQVZMCXnwKyO59vS6QbxzaAxkQKnJyOhEw1SZf8eR5ngqu/R4av8inqelOhUgXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717667243; c=relaxed/simple;
	bh=MbWK7Bm7iniTwbCyuwxsn94D0m2i+ZINvMIzjjvzKt0=;
	h=To:Subject:From:Message-Id:Date; b=fn+NL54MQnvhjeYJCyJg2NUwXVo5xFEUPFV6nTYV8mlKdLHsgpq4GCqHPYhV1WkEA3sdOUCR90sp+cddDjCJqkp4itq1gZJ65YHu0Xur/YdGP3k0wcmY0scQoUr0R3YBE7dIYSm/E9OzqvvQY9JsevoGpN5B33RMNqR5TWzKGyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxK6iGaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxK6iGaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D64C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717667242;
	bh=MbWK7Bm7iniTwbCyuwxsn94D0m2i+ZINvMIzjjvzKt0=;
	h=To:Subject:From:Date:From;
	b=nxK6iGaO5JSuuD4HlhwIyUfgUL4lp1yltGmObpFmp1IEu4tdUo7pjQ8iozHpGv68O
	 Fd9zbPia7+Cu9KlN1tU34EwFFSo/RMLa3f1VKoYc779w+4YPyh5BA6t1S/4TBK0aZz
	 /6F9m1+T6t/3UteycZrpZG1qn6QSj5+fXi5/0sQeFCwilfg5B2ivn2N6zVrazjWl1G
	 xd/44h9unOAkp+DjthP4qjO11b4un+S+IaHjGAeuXIkNoRBtZlAc1lxE0A+MwXSxGA
	 lnzSDFqu+BaGcbLKDXdQM4KpMJbSnLeiVPMIilxyF5gjNv/VZg3BufioaDf14QGoWB
	 insbtE+aVJdaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2602C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766724278.18651.9444775508228761770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e13078399b17f649203ce1f8874931d539a33423724c9b304c1289272d0771a
Date: Thu, 06 Jun 2024 09:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717667242
