Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C58C53A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B615AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674071487;
	bh=MNp+rMtZQHTj12L/WlLiLgeUbDGN7+beDIdSQoiVAmE=;
	h=To:Subject:From:Date:From;
	b=TyuqINtEbO2jewpFU4mhdrpBHV37Hl22c8A50w4EHHrWRky2GBJ+Ti7UDj90VN/Tm
	 asKftI9WSuKtFUBpielf33HX01IDF6J4HWQUwxnURpJhbISFGVsokX1l5ESsACwJtC
	 fD7bWPLDWkmlnKHPj5+5bt7hKhX8bXRva/oLqRfOIrw4fYXXAN6IpIbx2m1ffiHYY1
	 fyHcg/EJAn80jmeb4zEiEA88GMpSTD9VXYKlie8s7pIEvHl0DFm66sPV0ZU2DFXuSk
	 vKjc2WXFwiacUcs6X5zu67UjPF1Odq2uwQ/ieGPzUTpbSZZ7Y97h7bWNC5h3gljxUk
	 oA4wlxj930uPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B3B5C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167407148749.30253.17514359060920156310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc366f52b78644ab5b532bbac1261360fa1a4982bcd18403b2cc4a31feb37b3b
Date: Wed, 18 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674071487
