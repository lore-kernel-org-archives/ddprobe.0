Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165C71448E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762737594; cv=none; b=OGNEruS6Wc3s0h8Dyx4WJZR5wFdoaJgLlFb8os3w1vQ/xTMEbQAWR/WP/Jp0nmRDqC75EqOUGp+mmll2vfheDo3s+FwKbSUD8v+bDNOkuOs0owSDoj8DbvoL4GuSj+a6PNCNRzXGnvU1BMOPc3vvGx9hq+3J/PA7Mf+8mARFXNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762737594; c=relaxed/simple;
	bh=hRsWV6k+dA2m9uISADQt3L3tPXzTP6u9XK9ekg/ByYM=;
	h=To:Subject:From:Message-Id:Date; b=VbbKsfCFZLVeV3OvW0wUZoaohWwJbNjlme/Oir3x8ijcF1aiDODIDEwWEox8LBSCh+5jfzlaleNMJoPEzJqdrgxjwCBdjwq7oFHRFH4QypM7FJQnS/P/vKbZww9/2hZ0YzstA8ItdTGU6MkvMDFEXLr5Fpcygq5fRj3r4kYy7sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f46X97o2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f46X97o2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A719C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762737593;
	bh=hRsWV6k+dA2m9uISADQt3L3tPXzTP6u9XK9ekg/ByYM=;
	h=To:Subject:From:Date:From;
	b=f46X97o2uWzlfEkBLFNR4b/6wyf0UR00RTP1CBkKIVGclsUtrNEU07uSQ1LoC3Lg4
	 ic9j+OQpTxPgwnM5oKzCYp4waHteNSQqOcEnND57Gn/Gqr7g/LWix85udWraBkkuZh
	 sCKZDYaytBHnbggdhs04tV2jWkvWr5e2e75CBQUaLpyg01Fo7oqCNG34LdHG1ReFwU
	 9v8n30oQbxJucsmCvc2maYZpg8NyP1QyrFx/3sds5CutT1AroSVuX28v/2wZBKIGcb
	 9dliMFti5hR8Npqm1HN3J0J6H9SowQJoUF6vvFP1J6Is28BCk/mb16B+Z/dtR00Bip
	 8Zo+PDHxv2lmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B4CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273759358.7616.13327359053745702836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998a31a17cf9cfe1f40bdb941ffdc11057020be2d5d494fe21ed29d68acf2b8d
Date: Mon, 10 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762737593
