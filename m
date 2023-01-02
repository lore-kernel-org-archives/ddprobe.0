Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03D0182
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 892D1C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672633887;
	bh=CIVJX7JlX2EXl22FbXHd4abbdTdW87m5Mgn5TllRAos=;
	h=To:Subject:From:Date:From;
	b=AZZUnDY132WD6VS5hbhl6B9GpdXQ3stB01gYB/hMxCODkRK2/z/B8JfzrwYPNiR31
	 UWML9SB32ylk8XG/xUkMRD5+LD5BNob5GVbwnPv83WHMpD3rMbqt8RZ3EeUf5FoelL
	 HNDK1mnfCrsJCvSiXePbzhRXFfCYy7rDG7lBxeW9xikB66kXkt47MECg2fCxX5FXt5
	 ZgQeM4zPu32XbGtWga/LYLysO6j8ZRfD8s5erBaW2b2DCNdGrFfKHxL9jitLm8X9m4
	 aimWM3Sw2UMh1O73jaJCHaNQB2ZrJxr5kTkJB26YRhJMMOvKoEJkSolf6H+l2C86RD
	 99eKCUKOsibNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A0E1C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263388741.5848.8722712422084036867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5834c5215aefd29a6abc39020511dc0f3824dbfa6b2783dccdcffefdab795409
Date: Mon, 02 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672633887
