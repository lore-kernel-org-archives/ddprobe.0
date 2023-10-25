Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFB128680
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/6M/lgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B224C433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698265696;
	bh=cDyYwcDzZjF+yB3foE+KmlQlinTzKbAG1HKNF3LthjE=;
	h=To:Subject:From:Date:From;
	b=R/6M/lgncd9Y1oiYMi3eIoF7Tl/OxqikfHwMGKRJP1FeFBmINiUyt9VSWENZClrE8
	 OFbSJ1q9DQcSuAlwSJVZ9renLpIQhYtzrwfvIEBgFAKzprrNAwp7di2o6TpiupDmgh
	 tvIxFp6o1DOvJcDerS2VSytduuQgvRUC4I/V/yNndQhT3azu9q1RDA0jkK5tcSD2AA
	 IUAL/hD3+cqpY+8QnKs6+lyygGnVX39bR5kK/wfYVJ1t0MYqcLD1X9zeg4PBouC5ew
	 wDbudWOasHlg+VlY8gyndEE/Ze1X+AoOWWeolOduDeZF3i0NRW4YRKmpvI69V+Ua4z
	 kV1ugMRJgEM5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C1AC0032E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169826569640.11912.2169075555905545956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32f5baad2f8f13f78c7fd144d7cc46c16a406ee2024c2f5c57b64ef1c4a0bf4
Date: Wed, 25 Oct 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698265696
