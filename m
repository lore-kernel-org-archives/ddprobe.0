Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602F02F2E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 18:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CC6AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 18:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682361726;
	bh=2LO1CPA+qp0uBeuDv09mhsVVQ+kbVdqyWg7ZzSFENaA=;
	h=To:Subject:From:Date:From;
	b=MXyKvfCAH1/sY6c01qtpMHbJXCd3Jt40I7/OwVEJuvK9BWJ40aG3iVtRsD/QL8xgk
	 hIwcLswXxJODHWDNJ9kSD6evrDBTKAAlLBwwBE7jHgj+FsluJlsZfAA0A7iLNXyEfZ
	 TNZH6k4su82W/1lYkhWe+YnJsrhuTP7RNTdtq8IJd1WbExdokZo46rnwXSCkTNRaXM
	 hwbMLXQXpZJnxp+ew4VlasqvUG5y1E98G7QJv0Kwlrd2Wc8r8iRGrzNJ4mC0rX/E4P
	 aBDgoeyPAO0dpFgvTEGFhZ58nsTual9qtTPyd+nc98nXj8bVYNZJjsVeikWu2oK2dV
	 /mytGZc+/+1+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8485C77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 18:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168236172587.27589.1430641562294198975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20c8ccb01fdf2f4d09d796366792184613a6992be4fc419c19d27b847801f3d
Date: Mon, 24 Apr 2023 18:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682361725
