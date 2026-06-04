Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B86330C17A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780586074; cv=none; b=MU/7rkddv34BdV318O5mVjQU2qI0QEbXCaP/NWDm2zexJNATEmuuMETHkZCsLNKI5O2Ki2p2dwG4hc0LnT+cTfzn8cF6q+ar9wPSR8ZWZd8udRKDRDxTbBn1Jon1WfqJZ2kt3WL+es/4035A1Xj0u9mV/7eLBt7AjcqfVc3ykbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780586074; c=relaxed/simple;
	bh=dkgfU80Y7U8XgINUYFCYRYLFRYFMR81Mk9d9DTRlqZg=;
	h=To:Subject:From:Message-Id:Date; b=fCeXmL5Tf2YcJV3rT31vacL7oKVvx6rXpQbW77rSFT9y91/NXQ6Rt50YgVCaN892Mog8N15lVhjQh8WSD7FRRduvzjIVdYtwQ2Nj48lOZG3RLh3o/yguFjUYURLjEVYOCRCaQA4xsdLNnqF66k/cFYuaGPXkfWaO75e9sjVP4fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBTi9jgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBTi9jgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73C9C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780586073;
	bh=dkgfU80Y7U8XgINUYFCYRYLFRYFMR81Mk9d9DTRlqZg=;
	h=To:Subject:From:Date:From;
	b=GBTi9jgDSehMJ8dK+dn0RRfOy3kqbGBc6mxIpu08HPvaWDRsM5kQgT+t+Wmy5VfSo
	 ePzU+ydP00ZPVhDNXLzK5bWLigl/I0BveSWsgw/GObDch9yoCnrB+oIX3A5LIFSNRn
	 APWaZrUGWa+XMX7Ayx4MraEaIIlgK+EmNZJZM4Qs3u/59n21iYFZyce4rg/nCL5j1R
	 5kVe3OErL7crHJx10B7Ld0LRLTG84euNJ184myRAL1g5Io7XEUedEw9xmFa2Bber22
	 k6T7dlH3WbKz3EYEZofGPthkcsMqG+Sp1XPn5iC7IABkdtVNIF1mh9yfxyX9ra1azh
	 1rjH93Drxb/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE55CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058607369.17672.14889089102625892634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba7e36017387290837b9cf47e5a1230ce51a860328b55677bace5b4770cc626
Date: Thu, 04 Jun 2026 15:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780586073
