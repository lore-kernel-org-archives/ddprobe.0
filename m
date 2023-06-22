Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BED620690
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 19:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13E00C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 19:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687462389;
	bh=Wb9y/HnQ2cwOLPn8Lenmxv1bTeI6G4ZWFOLO6Ka2dzg=;
	h=To:Subject:From:Date:From;
	b=ATMvTsY6LXUC0lfU+MJFcoU38bkmtk5NAcHsYjtHlQjcJgkGHeslkFOK455c9q8Sx
	 8HnlrhRxwXIKiMctygrIKEdhqXq1PtNzKT8rLb9o5ILcQ9MazJewLeEndH9MJpfEb1
	 GGvNpjQPipuuMLRhX4GDSfieTFmRdTCwpDLQYLIvYsTaZuJ8WSEWw8WiCLjqY6AMTi
	 S+gqJb/MyHY1AbeX7jUGmM8q7vQ+69njzVeVlEO0iu9cTbWC9ct/M4QgxaG1Vz2HaP
	 CwQvTpmBR9237rwbtgirDpOFc01/38tXnpqWcKNIOhIyfWIVCqCr1DyrF6QbRuqbCo
	 Zky+oHxUn0J5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E3AEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 19:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168746238877.23776.11597256937457797350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb2a92d9bdd5ab941e71b1696e37eba1f4083ad1ce82641d3938af67f7f3757
Date: Thu, 22 Jun 2023 19:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687462388
