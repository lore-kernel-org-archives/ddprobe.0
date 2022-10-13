Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02DC29A2
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DDC9C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665660653;
	bh=/9vdIjnrdhuA1OKwoDKaFcgx8yovpnRkDBz5H7pjWE4=;
	h=To:Subject:From:Date:From;
	b=qJqcYWyT0XQb+jPUasqKK6kgjyaTXqMRbBDcwqjQ3x2OaBRAR2ZhbWoFD4VNfW3ZZ
	 yiUIX+fmJODZ3tgSFDwf2I07sLWzqjd7C1CfDZqdyuprJcJksLu76oWHAx7ovo6Isd
	 ZSP4Xq1L/zEFJhJF6e75M4kNEgi24BVjSXsmxrr/mD6xIC2vTTaonPFVS48Lil9klO
	 7u5eckaUK8bYqXHngYuYHw5xQEXiJjN+ovBTC38Wi2xVcPwuWCdaddA0X2sFAwjA5W
	 a3HzgWzLsw+9NF2QtBQlg+jegwIkWbXJ1gTRt31Y7Cg0viSDVKfilgvnKp74y/53QX
	 kDjbvn6faEjsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5277BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166566065333.32677.3104724480720088399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16bb5ff57b5610590603650dc677d0ce5cc2585d2db46b26496eb048e856fb7
Date: Thu, 13 Oct 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665660653
