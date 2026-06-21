Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568DB282F36
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782051394; cv=none; b=YN8lAZ3m/gjVD4iQzBXON7EYRlcmrQPJYz3TsHeSC9G1Ru8FG5d3pHieJwN/G8npiWlSvE0newr1+J3PKd9bykm1r6BH7FDXfGJ0NvEvp/jhHF2xKc2R8J2nVbVb4VAQNntyiGwP4P9FTgB8bUPg9FW6kDYkeU6FJrs1hFFx9IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782051394; c=relaxed/simple;
	bh=ZoMRDbAXqTA6zS+LDcF5mLjt8FeqrqFPAJFpzSKeVv4=;
	h=To:Subject:From:Message-Id:Date; b=LoIJgqZhvC3jntQp0jpbKvmxbLZpAjXKLZc/B6bCvRiGxn68Vs0L6tncafRdsNxrH6E0qwhafaVcjK9lYedqfmrm05MskltTMl+xQskuiB2BPDoiqA5QUZSBmncw22XBpFOHLwoKg0VQVKz4w/5kSfw2Q/eJ8EJ1Isj/TVVTmSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9/JEjlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9/JEjlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5EDC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782051393;
	bh=ZoMRDbAXqTA6zS+LDcF5mLjt8FeqrqFPAJFpzSKeVv4=;
	h=To:Subject:From:Date:From;
	b=q9/JEjlhNGwHVBYoqrwKNNRo4QY3dEOxU9Te0LcEcc5J1JwIb2P6sL+hbF83VTBCy
	 6AgvmcmKg2m2u/tsQFU05AFce236lPuIYm3CcU71qAzKI3wnLXd6kYOaKQNukKjWiO
	 ITAaeztu4+ZxBZV0/wSq2kGAUcm79t/574RGcD3FzxqciaU3wjixEhNYO4XlWPQ5NH
	 g5zGL+Hr09jQL3GH5vLefHWHKrt/TxHm/JHvaUACfbt9moLuY863I0PDGysJdBFSTA
	 pd4UbnxL5ejrI5ef+a7R1auEHlppcMzn9higTCsbwKVvI3uyv5FMKK97abyzxaw5Fy
	 BAbyJ04GeI+Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17B7CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205139368.1494.1993900290050413995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38646ded23302ad15e2774d98475a1f873122ea3c2c3673e0024d332e312dab1
Date: Sun, 21 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782051393
