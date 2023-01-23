Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CF57C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 20:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F82C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 20:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674504785;
	bh=s+JreezCk4fVt8+mfTHHMx1ohJC4JVRtxKOUdYKII0Q=;
	h=To:Subject:From:Date:From;
	b=upvOkW5iL5YEdGGqU1rsw0clHGs4VZFXKICrwFdnP6zpFgjaDLupjqq+PnLGPVwV5
	 wcrbWCKdwTlrhzvN3AvsSlq/2wkt2PwGN9PuEfncL4/G6kTfS0xduNuPAfBIOya/T2
	 1q3mDGze77A2t+m+MKyn98ndriv1qw7IaS77bfxhjwlmwz5Are5QzJgppEa2qCYaNe
	 0/XAb9riWqu1RY9xIbMiOSmWGISUMhzfGwPomXq0Se9Y1Xsw9zmkVls7bioTtCHQFs
	 LU3iqKzUoCTrmlTpHA224HlarQjm/Eg+lx6Nwc1VNgBMJNy517lqLqE+8gnkDDp8dD
	 FINqdg+ms4jng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D96C25B50
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 20:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167450478575.16604.12520447457636669326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8524dcc9997d539acd7e4d7b8e3795bd1ea7418122dffcfa3bbc6eebe1938236
Date: Mon, 23 Jan 2023 20:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674504785
