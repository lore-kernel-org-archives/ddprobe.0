Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD742CA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E26C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663875053;
	bh=4K4rtXXfkb6g4Yt+CqvjCTTC1LGpN2R0kFfPtaA6e88=;
	h=To:Subject:From:Date:From;
	b=buXRm/FF9vnbAfPcr2m5wJd2cwB9coQSfBqKK+DgWcRAegjwU7Eh3C2WPOtiBGe+5
	 jH9tceSqpAb9bRMUYMgzWH+9qoFrxGOeEXrQBvbUPpjkvT7LgDrkGMl5iA1X1DJxe0
	 RHhsMlVEAUFfzoSTpyo5DHpnzHwQAh60YzDgANDruUTFvpHuVcZWx3EDzUvigzMNLs
	 Lxl7s/kJeBydvobUp/NfBKTOFMoL7O8jkHS6G9Zn2TaonePIHhowxkrFjEmZZ3258l
	 qsFxYgQGSn5OVc1W55MOslsNSy3ox2B62sZrNgSFO7lpdiOkV0RWqCmRnMLCjY1mVT
	 /UWkcOJwfeCgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533F5C54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387505333.19089.13956017360241912642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab487198a78f399896c72d480ba9dd8b89c22d2005550450a50b19d84ac9b28
Date: Thu, 22 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663875053
