Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540AB339BE
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 19:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elNUDo/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD20C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 19:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697483828;
	bh=Tmqy8GjBzwZkIHBLEzJdi9srXao3Ug/VE0NSN7PK/AA=;
	h=To:Subject:From:Date:From;
	b=elNUDo/fRFjvsUZ5hlII4GM+6TkzXdV4SZz3kbFbVwHw/pW1XkziXfzrqS3TPJHbl
	 PKQ2wzRlxG+aTZkZifXQ8yb2FDCehNRmWh69G5bFXZUdiAKOe/xJR/QrtDQE/PQdj/
	 TgZFcwkn3FBKBwtS4uVaDrLeYAwTr7kq9qc6w5ePuJAMTvPSmp/aYixFT//ZscRN1+
	 95mC1jYVqtPks2XbR9r+tuKnUzhcOCrIONvU8bNMiqV0Ll5yu2HAN57uaCAQcl0elk
	 FfAtuDBxCWxOulfNZf36z5X5dNkJzX9YkMLakaIAFbro7m9R2MXQdepj2JCMebSY6a
	 Qxt+iAPaIdujA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9E4CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 19:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169748382871.5272.15086108542705974147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff8dfb6a516d08e995ffebabe4d29605b52d9a5ff7e5034f6593c006693f837
Date: Mon, 16 Oct 2023 19:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697483828
