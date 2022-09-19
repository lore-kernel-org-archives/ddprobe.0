Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F40256C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CED8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663620053;
	bh=NdOrRtFnBqOqsM15iDB72DgGgOdN2E01vFZI+JhYDxo=;
	h=To:Subject:From:Date:From;
	b=N0biMwn4QCHb93786li58cIF81RkMLC7MB9qp/qkiM7W4TKrPo7sm0LFp/CY8Vy6c
	 zZtkxuP255wivctgcLmMiUsJpuklD+9Bu3sNzpNnjrPdo5OUdZmuKWZduereeSMM/E
	 OMt8Na62cj+rjc2BOyDkEHWvwDD0W3sknDBFCcg5wPKxs5wx31yNJ8rGmqq0/BkEvX
	 kGidW0VGkizdNmV42mWoO9g3yNR+AwtLCYa7bonkrjymhNT1dF1vT4zFJefSz5AWRL
	 MY2BVNtzl5Jk/xt960kikeb4mUwBAlt1wL3nfhkcCGppJITptqZdHGaVoVxz23Jqh+
	 kNE3PVblI9K+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5029DECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362005331.23204.17994477901716747556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa7a477856ad9c4f6583803f9fb197b8aeb27a41e5b80164830d68f815464a0
Date: Mon, 19 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663620053
