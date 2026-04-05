Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BA740DFCC
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775392534; cv=none; b=IEEI89dypxRbc/4xnlEdG0km+btko45qFn7WRaUch9njYxvmC1FAc7rCmkojsvMPrwHNz4hcPtQXlDWYnMk23AhEc+nFmsWWFYBPfAIOlTDZM5p7qQCc1TA2IUGNQ4ivG5OG+FkiZq8GqgEMogWgvUfRA//A7e+lmJG7JaBCN/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775392534; c=relaxed/simple;
	bh=niIfNUX3WdowM8HpT5Qv9/0dT1fXh+8gf/fsToelhC4=;
	h=To:Subject:From:Message-Id:Date; b=A7v1VVzomGqL46B1+uSq+YcPvWKTWRMDA/Ile4nBQYX1X37CJQ03TW2/EJJOk1bWMLETyNukJDWmMEkak4jOfXzQcy4KNevwCjt/wPO8jQNJJhUf2HoNxo7NT65qAkqEEQDHetmbIgg2araOE3EE2N64SRGXV0uLs1PtGE34ugE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mV7k9FVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV7k9FVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC46C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775392533;
	bh=niIfNUX3WdowM8HpT5Qv9/0dT1fXh+8gf/fsToelhC4=;
	h=To:Subject:From:Date:From;
	b=mV7k9FVVETu76PGCJtG11ak6QqJigwqnOGD3bTcTJmtlyNaN0ScHcRvpT6LyXxs/J
	 QtX/3jSQr10UnqbpX8FLiAxoj74rqWjT00TBg8eeqLp34JIInKnK73BcQkJ2XzvlGw
	 M7LTTQ/lhKfUaTvoRVAsOT0dDVKXEMxmlwgiQrZGE5g7OgCRixPKqNo+Ilvri4H+XJ
	 65FmogmnlFDPauvf7rf9QwQDj2aO3igbXHxxKpHZpyq1Pwe2OIWlQdkiDIdZJ+bUPz
	 ybr6KqUb/5Aoj+eBttyax+rayfG3TcIViJuBu+Fj0fkrs/HxELqtAGXi+uaOHtNUIR
	 f4mh16nRJYJuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C0E63FE8
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539253368.6983.14584705145738083521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb79b39f1102840e07281864acdf8c6ea99aa40dc17d073e8dc5a79a2b811fb3
Date: Sun, 05 Apr 2026 12:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775392533
