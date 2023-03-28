Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B79D8BE0
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 14:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E845CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 14:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680015185;
	bh=pPCeI8DNqrTzHuz3KRzKuEVA40EHk3FY20cDTZ42kGw=;
	h=To:Subject:From:Date:From;
	b=KfGFh8ujV3q8MRnUx6t33iKdiecsVpEnqX0yWcwUEjILJlg58Zj1ZIFxG5fsASvL3
	 0VzB8d77vH2X1C0/8NP9lWe7XJpqJMebApJ+XCur8/sbXWT+oILph/Ux1DrLQiyLhz
	 pNhRT6yccCToU342KfGT5g9Dm5qBnqpSTpiQMNIh5Pc3ziLeUq7LJLO/zWnRROIG9n
	 j+2RDh5qf27kGtcwlEu/OksQ554zkuR5m8kzX6URyP4x8wizi5Ev6M8brKC5wvN1/e
	 D9Gq0mkVTAwOTdZEoAAbSfqtezTxtilK2EVYfm0Tk4Xsn3/L36qdB4QLhSt7QnGaDn
	 EyxCNGKJrFDcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB3CC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 14:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168001518582.31269.17310387209199673592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb8471639ac1f3927979f475004db7565531384242d74879b811ad017af36aa
Date: Tue, 28 Mar 2023 14:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680015185
