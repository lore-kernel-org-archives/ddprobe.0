Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A8333D9
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 15:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08E8AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 15:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682609526;
	bh=3Q4oNb+1dwc5dgwO9RZYONTIuxaM78KOOLiuPCmxydk=;
	h=To:Subject:From:Date:From;
	b=PUrVbZfcIqRwf5h5C+VbZP5Wefo4oQNe6sjnd+4Y87TsPnZi6JrR0h8BwvXjLDuZT
	 d5riVZMOAeursNJBmvmgX7+vgDH6jkx+xW2fvHCGM0vDKYnPhg8JSVzHg1EU40C4UA
	 wxh0j7Roi54mcJAKFV/qAgeW5lDgqY95f8pLy3iPtWnX/Q3pM130iDf+K0eiKf5UFH
	 R/9DmRCVaZwJdRxvPHNmT5jSQlnaGZrIL7d41BwJhTRRhgd/MLYj5+wcGX+gBcxaRq
	 oB041WmpUSQhOW8c4kq9bOeVMn7HORZAKVKkh9hQADDet5hltgJ/GjRF+ulx6jblPE
	 fjeJkfNNOVsJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE872C77B7E
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 15:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168260952583.31791.10438493254235686795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d049afc483322f421af037eb0538253bcf8387551f5a086d45f8b1844e242b
Date: Thu, 27 Apr 2023 15:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682609525
