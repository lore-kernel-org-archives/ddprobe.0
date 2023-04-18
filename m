Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB8023B7
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 10:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E6FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 10:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681814945;
	bh=lhmpUQUM7IWiF79Gk50O++rcQ8lFtrNu/SYJuSqGLhA=;
	h=To:Subject:From:Date:From;
	b=ZEHfZC3A2wrXPDfKSOmqnXT/Q/1kPRfrIPFIHamfSOe8LgEf12jCTgGO1O+aK7Y6a
	 bEwDiE9r0BoL50qgKWywaA2GR/6KpllDTlW7DgNnE/C1lIwpyRpSus82VRgfMBLRzS
	 FN6xTWgljCAb2F1jTqeFZsVyDCclwyZ+dZPH4GbNQLRqcyN5nHUo0+6O+v8yMwBIxK
	 +llOxsGBWFSk6qy7segu72p3/t+vLd+Bi1G4K8noaYFr4E/O//TkJ7mlzjTi36V4HF
	 g3LbePcbjrt6mrDSY8jTOH8f5MKc2liFQhrE2oAI8LF4pEHGXhwfG2cId55nj+oz01
	 GbNrm+6uTaLbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15A5C77B76
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 10:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168181494578.7781.2989195581750171680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a5878b6a0a76f93f027914f7c09305eb24982239e61c90fcf02881961b7de2
Date: Tue, 18 Apr 2023 10:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681814945
