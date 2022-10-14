Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74143FFE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722A9C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665780053;
	bh=o+bEewv5VPVY0rAS6dz2YhL52Fs3/cac0NK+EsBqKRw=;
	h=To:Subject:From:Date:From;
	b=PO+g1LBob5u473WtE3Sx2uXJ9XKWx1Evzz4VgB48aM843v1IP4wtuAwpDkeLxW0Bl
	 t+nNRg6/eL+orsnY6prRRkjKxpd7lLN8NRB/IhK1GAdJu3HHaT1X03s8RzZwLqFR9b
	 4bRUPiDKpXSVIeEHvm8CeotFC5K683BsEzEP8tgoCs7AGwdke+lR84X4HaX4w6AaDc
	 jYj1qkxysm8OacV3MceR0IA9XMpS089xr9z6qoA6idCR3ObF2/VrTwxnaH7xLG27qw
	 tzx0nEKYh8lJpoIfG045QgVyWxU73vD+cRXZ9vYCU11spDXfFlp5p7pA04Za+3QbK7
	 rCofOWUPgHu+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A210C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166578005335.16526.16369652328809472146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b423ed5cb2e6823c8fa93aaa988da3e5a152cd83e90a4c77e41832463dc90ec1
Date: Fri, 14 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665780053
