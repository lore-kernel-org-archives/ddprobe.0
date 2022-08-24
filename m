Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6807B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7667CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661374852;
	bh=VT8DsXIbh+AELR1GCGNHyG1S7YyFF4aG48BN8eGkcYE=;
	h=To:Subject:From:Date:From;
	b=V2pczZghHN9u/GatemVRzLEHbOkrqcXOlHQTWTN5nB4YNok15HfmtrZUhMUha9JL7
	 FzoQ5nyxXRj7Kg9Gpqq3Wjmt3Fyv4P6D7chhdETNuA88t4gLW/ur2wFA3tJDPXcOnQ
	 MqvCk7+ocWx9gxFLBC0H6TfGEjcbNPislHanU0LbUWziPVVVjSX/JlM7jWPF0xL7qy
	 6WpBJd0+5tMVWYQ+BN2PJ/TG53cYSPkrtqdQ4GfVCj7aifyh2u3+ncG+/isme1v1U2
	 e5dhg2NrYwb1M4NzKSVRMQWqDRQoO5AwuWzHSQN94xpqM7RiG8lW/2pL7sHj+Dzz3R
	 Bt5si8xjrNw+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574CCC3F6B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166137485234.17531.226398016044531533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949f19307cd46ed874899b5c5660634e27595757a7c6bf7e5e3bb15239ff3369
Date: Wed, 24 Aug 2022 21:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661374852
