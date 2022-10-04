Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE053210D
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72CC7C433D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664874653;
	bh=2tEaBPbvTviJnq4psrz+dNHPYOZPgzjzwNPu8Dc6980=;
	h=To:Subject:From:Date:From;
	b=d3/ly/rYNL/6iSjDa2GAM7qOip7dGYuJyJ+ilEyXW5KzVZ0UbxhEFgtPhdjnAZ5Nj
	 LFjptfMJt6z22gsFBSUbjkzgZBs1EruZg2E30+0tb6RF45nRvWP8yFVhH8svfPUsPE
	 AWA3zxQD/dZVbU36PsAW4fk+k/kd+4soVzfhJlcQM6wQbZvFBW65QURT8S2CP1BXFz
	 7cVBr023GxQfDj930B1KIHBgJ6kz7Y+NGyH7e6UVbt11xmZANAz5HyYsqsuFTyXlE/
	 /ukWgcW5UsNasuTqth7SrRUR1xhghpJL92P2/mfuvqTxFElZX/Sd3RGGdnVTsK+0gh
	 zAyw6zrEnrdVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C7FC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487465335.16551.10722537420719759102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35e72227eacb4f5dc4a4fc59512f964fc4ba178073a6d7fcd9c491932bfcfcb
Date: Tue, 04 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664874653
