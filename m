Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097021846
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzfawQLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81834C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702694896;
	bh=IRTIADfcDqI22KFX1mcd02kDCTFG6kvScYZcBoc9CuI=;
	h=To:Subject:From:Date:From;
	b=FzfawQLsDuXDlrDbPY/hbP15Se93X5876R+jO/xUDchDoGEOVanRfKd2kFFkhHEWz
	 vO/k5sCoAqTAm0I3fbHdaPtbRmUuDUY029BDg4izBrf6UswxUOv+icIb3yN9zeCGwY
	 4xBcDbDUGfOBww5wvsefrWk2A9Ifb5TiAdYSgZvtT/08J2L39SnwPsHdZZE6H14oKY
	 oB5Vnl8JC9sYKJTf1qLIE0nWoOB3NRYvDaf/n5XsnKiqesOYU3JnUQFDNfwX0RHmMP
	 iYWYKVSswTIKiGfI5OKtCZ9yRgcB4HSowVvB5XB1Mq/RrrWFaR1V6HuLuLM9UFFct/
	 LnQasvpbfy8fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67325C4332F
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170269489638.30988.2358647463318909332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce07474e3451771a5e47b67de487823ebde427f0a233765cd50b141e4b43f117
Date: Sat, 16 Dec 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702694896
