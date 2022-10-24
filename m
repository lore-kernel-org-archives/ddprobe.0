Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5E77E6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F4FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666599653;
	bh=Et0+icJ6OHRW5ABjG059B7jZBUEqTAJ3sP4KfGtLY34=;
	h=To:Subject:From:Date:From;
	b=PbpHhZfi6kd238JgaJvkl0a/Bbpff4shIZb24BYIfnu7qI5r+vknhMsNcApyF1nqQ
	 S4RorOSRkbY8zLUX+zn4dOD8cEgKZUe29JA+5yQ7B8f/Rtapup6hGZZHFyVNlH8yAz
	 CPOT4G7CU8W0mHaJNJb93P+IB+hKB+6cQrX5y2nIse96iGjPZESNL9CXVk8FjgVFNc
	 bz2gA1Cvv2DlujrLm9J23YkpodSYLnPFMbdD9bnls3jJ6D6CQyKmd/9Sw/CRH3anHC
	 U89HNZVIGamwOaeDzHcisV3ywzAkh4Pvkt3nYpno2UwNsNMhnRc301Gn8pto7CC/qH
	 RRiygV1DqKbEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDE3C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659965338.7634.6966520664972682093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70711bfff3f19bc203c0c301f907a5aaa0e371815061ceb0709bf71aa2c8d604
Date: Mon, 24 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666599653
