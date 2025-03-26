Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408D42904
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742951995; cv=none; b=eur1gh677gFx5u1OF6sqTmK4Z5V/e1k0ng2axorZt/xsZnRFXu46tmCq5iUAqmLS1eWqiqChycilsqBgvZkxfvTKsW0j5Tgs7SNPaIp7hZYQSjkKi8X9076J+L4oatfkMJRWwkrpo1uBBUKd/PyLtHWiuLR56DWvK8g0PmTYQFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742951995; c=relaxed/simple;
	bh=CCnoY9/pHkduyuPs8LnY4jiS1uBvvAcy/EZueDz5E+E=;
	h=To:Subject:From:Message-Id:Date; b=rop7LImlptmrXNH5Sngy4vDWHYmPBtibxjiFfGBMrTQaldeTFPpFg5TWVTL+30bQjbkLSzPFltDl9w4VIgkh7QC8dxQ/IVrRq6DN4wcn+iMUboveNX111Ine9L/unQyvgUOUwmBjiNASB9pKVYGdWuwSBtzJ4qqlovgtxM9xGeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTbWmWo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTbWmWo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0385C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742951993;
	bh=CCnoY9/pHkduyuPs8LnY4jiS1uBvvAcy/EZueDz5E+E=;
	h=To:Subject:From:Date:From;
	b=WTbWmWo0+c2CVlQYOHD2JyFQNMJ5LzKhoNM2qcCaZHbp/9/cxAUkv4u7D3B7y5elA
	 fXO4VxzLXPc/TV0mXZIuzjB7bqTLBD1VrckHIursPqVXiub7ihqh++uu+JwTLR4i5w
	 LKzKCxblTmr5vCzdETV7+R0tr4KgM6Zvs1cNk8N+xKy/jXT9p2nK4ZP6wwEyVa2Nk+
	 FkA+lCTqDdW2Gm9FGTZlQmohZ7UaqgpFxfo3MNttknMh+YYIkMaJsNWe7AFo1w2hQx
	 HzUi+BBSzhB+gD+SMTIkA29THt/OUlI+GcPiCJ9iS214LV78a2Nne8En9jP4DvJGzs
	 gdipyh+BXbikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D82DC36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295199363.3882.2332368154411445548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690cff7e441da1f418e4b8e04600cc018ff15d08addef6538de9e0251b8015b2
Date: Wed, 26 Mar 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742951993
