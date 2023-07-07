Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1CD7F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 01:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F11AFC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 01:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688692629;
	bh=jABYK14CTzy8N4OF6OGDkIuFDa57o37a0LkSdpI3cHg=;
	h=To:Subject:From:Date:From;
	b=k77LSoiZG1RAPTWmpRe7AHjT1UEeJ776SqOKX1IXWVKyQqTU3P/wE+WuwmytpFe5H
	 hvLzScbE/lLcBIaSPvxZLFPQqBnVAFpXztjeeiWZtR4LNVK8hJg7auafWWTVjCJGDd
	 8aVERxcmS+T9M1dw+GepA/cAt3Vvaja18bwgR2aGCCYMNwIlwahKMzfF0OKICui0Rc
	 sidG9tdUqLnxveVnlHlj8eeIyHti1bmwSGQGmBv03YzT9/IJDbqKFLM7yINtC6ammP
	 k9ytVSl41UJI5fe48kvzPuZ9B7mQm5b2i3oANOG/5TqhSm7f+4+3q0WQrh4KEwPozT
	 9u9HvjOcJ4KcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39CDEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 01:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168869262879.8054.5845773911544180373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e6dd7b210468c1471ea5d602766e7b80a8b3bed50d90ddf00909b226909de7
Date: Fri, 07 Jul 2023 01:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688692628
