Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8B31104
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 07:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0719C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 07:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679297225;
	bh=gKbtr7F7qvMEwXPKoewxgSBn8ELahXMDK4ak7uMwsiE=;
	h=To:Subject:From:Date:From;
	b=PhPYR61fGnp3jHmmah4t4gVUTM/8LRmlKmzHzADe3FvWawY0SVk/aykBPYaW/dWLp
	 Dn7EAL6TDtd5+VXpB5cx8RAbmQXt/+QRJleN22LWcI3RfCVZ/uny3SKEih4H1B3nU+
	 tG6DW3YxFNSdjB7uNOSlHWX167f7VmcDwtZGrR5F8MN3EIdVjvXwv8EhN4ltGU3LR+
	 /eeWwlHw4uy9tNucbhMVnyqBGcttutPLtMiLAVu63umxt+RSrR0nauAAMJwp8o/0NW
	 2GGs5BboQ723apuhmt5KzbBQv3HmLooZAqkaWF63YPl3/I1RxZFgacYviGRGcIsNYD
	 Jw8FZ3PyoxcEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7D3C7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 07:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167929722577.7124.14788144627716547290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41d579c0a87dba0a9c69e9c5b163583d3097ed5a76ed008195eef40c85cf1d9
Date: Mon, 20 Mar 2023 07:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679297225
