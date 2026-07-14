Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3E9305662
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783997914; cv=none; b=TG35l/N9AIC8N6btCAIgi4EgX8oW0I5+U2YVNasEsKH6nmRuB9dgm/bET+17fq2Qj5+V1to94l2E8cMUeAnOb0epV8S9vcTaFcMzxJnr7EEvQCBAL4Y1ApkfyuXnEYaFbGx1SXWeR35jEGI66DpCZYrGYXy3Ey8E1PcYOCMdf4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783997914; c=relaxed/simple;
	bh=4DllGRmrbXKlwmJQlwVu/klFBbp/FhJ5aAk/cVy2a3w=;
	h=To:Subject:From:Message-Id:Date; b=ZSkthAnujPWdfx8VQc8O3ZDFeTSs81Jbr+gYSg61Lpr2PIpP9pXoX1OKBr9eDzldm49wPgUTGekzhucGBHAqZ4Szw17eF8J3l9xmb+2jFFcRxaKT67emyfvTTC82pbGxUp2xm843w9eZq5cLOtT6nnDnFxPt3U5pYMZwWx0cusY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiD9E7f/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiD9E7f/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFA0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783997913;
	bh=4DllGRmrbXKlwmJQlwVu/klFBbp/FhJ5aAk/cVy2a3w=;
	h=To:Subject:From:Date:From;
	b=aiD9E7f/eI2vFWvgAxn3S/DnHNi51ETNpShaqKR8p13w+j4qkuz+YdYpYvaasttot
	 lq2VnFeOLjzb2RRYWPKP34xLvJ7YOSdaouLncYUGzS2PaKKn7hk0ZOCdvxV9IYBfyy
	 2IhPU5ZsFdcf4R5/DKYNpkq3nF1KUzbJYzXrVvwN+Vkq/pASGOM2Bv+voZ+KlJ6Xnq
	 1178Is4EE9gSmObuDcUp4bIdCwS4WlOv63IrQK7jUKrUtxazUxTh0z6O/fQf3Rn5wV
	 8JcxoZsmKxK6iwylNEZYPNNm5hW3Fv8kLsQiqfY1VboywtFMgTWRauf6dCPwDLTmVY
	 EP8l1k5wKjdWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8503C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399791368.32059.2534660012457354189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1044fd6dfa07a781aa6337f679f7acbf25505c0539a2a707e4bcad2b4666f7
Date: Tue, 14 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783997913
