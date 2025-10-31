Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254562F84F
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761869394; cv=none; b=PGSFM9FmOmLaXPFhMSCVoJd8SKqy8r82NXteX73fLdvVUWnOgL+YBhorFcMZY2A0/mO5iXWH8Xvm37VbDZt7KePSnHts3DawT3LjaXQ1RI5YkRuA5onSHCa8untcPr5qgpKgZR3BEpCccs539VoQVAM8vHnSLXb0Wv743lLXLxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761869394; c=relaxed/simple;
	bh=taMni4/OYk9jIWHyAypvZxo6sNV5q8nd8eaKGrQ15OI=;
	h=To:Subject:From:Message-Id:Date; b=J7z2ZDS0FDgsbogCZO4joYNnUyXJlKxA4TyUnMLkRY2rZgqWWZx9qYYV9QBpW5MZ7W6sSh9Q4m/NA7+NRpcXYerc6E5uuzifJ1wPaLltf9tqEcU3FpdAirqjc6Um4kGtSXuTpffiyvMeOYZBMtLaCQgOl8KQPQI5ViGQ6JfOugA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXxc0j3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXxc0j3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A134AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761869393;
	bh=taMni4/OYk9jIWHyAypvZxo6sNV5q8nd8eaKGrQ15OI=;
	h=To:Subject:From:Date:From;
	b=ZXxc0j3pD9AaTDKK4RZGABDP/9OHS/+/0rdIOI4Ah5odAOGewnnyk3g3e7n3Avtju
	 WgbxlSUnLhW6oGHo9kl4rFh5wV1qepHwtzZzBQ3huUXJ09CzZoerIO9O74+BxKkBIs
	 wZ1AjlxG/6xbBN6tyqzg1FTggd2NvhRlTtzH1DnJwP3lJx13//DfQGT1rHpCpNS5GY
	 JlJrrAbBTDtRe1dT1bXCy8OJx73pCBh7F4WhZ9qV0KsOrcvXZCX4wc2+5OfF8ugcZA
	 i1u7f51jlKxTi0QrYuXfMaAQbpZbvn8h75jgLV5koql332soT/l6V/fZ1jnSWd6Jie
	 qX8lb6MRBEhcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96334CCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186939358.3705.2667233069268489937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a151077637daa854746705539e6f9cff22105969831fd1b19a53a405d55c8a41
Date: Fri, 31 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761869393
