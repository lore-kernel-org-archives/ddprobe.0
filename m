Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A101C06
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 05:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 097BBC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 05:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686546786;
	bh=U4hyeI0g/MeDdbYwsVBIgkmBSKCfFshzg4sTzsDoF5Y=;
	h=To:Subject:From:Date:From;
	b=E8UVsMfQAY+IZLfKMhnudsQya1E/d5YIxulV4wpcVkLS3AorGig3VNtEoXCvFrbd3
	 ARkKmK8Q7jcDsy9BKqumcXbnVvJRFYCD5yfNUSy8g5fVXD6REEd4ZiIn5k4MYlFqAe
	 OiMts1MfIAT340gHwRU2NfcIrKNp6TS+omT3QOaPSxP/MUgsBvXa4WBcRjWON4wlF5
	 6FlI/JYynJor6I0L/fEJ8hfmQInfdKx3KPpdkrNct77MdBKpzN4ajgfSQpFrf2w298
	 SUgNoLWlgBwTj2l8ngMm7uwj2xW7OmCrnXrgsWz+BvOPgzWtD3IrckZ5fdkW3EV668
	 KjzTPIvh2DO9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8D7DC7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 05:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168654678585.15170.6348512721924877352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa28b7713d9007521d143512b4592bf92499d1c394a46cd5bf1733729ed7954
Date: Mon, 12 Jun 2023 05:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686546785
