Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9A410F7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F70C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665998453;
	bh=eOvxbYpb5GyAhj/hUbfyJnFwC13WeFlgwVv1C3dfgP0=;
	h=To:Subject:From:Date:From;
	b=QI4U+FNLka6ieP/nXd/mDVK8EPIiKYprY5Q7VW5HqpJHN8OoO0s3sqcHTjwr1E6it
	 PCUAXmatYTXveVuDlpiLT5RCywTWWaGaNDj1atLn33H8D0ILuNXXWOrfVNZnw+BIUu
	 xSaqyeZOo26ZyKhKsSRAVcH4AfUmj1zloGVMWwvPUd1yKxUsrQrsmxucvECprdZr19
	 x21n/dsLutsckLi+LkAgRNHcT/vEZP+fqBrUY6Qnu6mcWBToVLFi2YlcUIAmonGWLb
	 oyDHEaFP5HnMm69hKNhfx8CRm/6kXd/eXV1QQhxRIZTvs2TNIXhTWVzzQ/u7FQbxuc
	 wO19LriLfoUJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C1EC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599845335.23166.3651862350298802991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b6a51e0b5fd21e83074ac48998a734c936c58ff7ee767fc036a30ec9cd89d0
Date: Mon, 17 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665998453
