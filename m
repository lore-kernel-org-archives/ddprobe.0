Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515721714B3
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745638194; cv=none; b=kVVqXSX0SFNSJ6YhgFkFhhuo3CxkAXkaaDzvJTs/97NQ1MP5q0tfRUbW9MxT08kyILi1mN/auHSHrnijGu4JJbfVM+Lnn+0VrJO/ZznTiXZPcwMBwHrwqO0ksQTzPiJD6AKYJ7oP7Pb7zKRXyJPp5cqQckzw+ZWDv/0HvKL70AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745638194; c=relaxed/simple;
	bh=AqyGvpgB+gxiTCLl2ncTK6kbrNhonCNO7VGkP9nPYXI=;
	h=To:Subject:From:Message-Id:Date; b=Mq4tjbQ7znFRH5ZkTJwYB08Flf47TqYUuBbvSiN6TO6BwI+vsHdcGCtlL4tOTqo7PzAdUDqHvhieH6Elaw3HlNymFh+73DOJgGwArPnTxo8O0pvbbQGQN5rIKNF53JwXMOHtCRxnFf6nsC8JkOzo3BwZ8aH+8EbMxeRSebRDYQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgcYaG+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgcYaG+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE979C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745638193;
	bh=AqyGvpgB+gxiTCLl2ncTK6kbrNhonCNO7VGkP9nPYXI=;
	h=To:Subject:From:Date:From;
	b=hgcYaG+xePGkCnOl+dYmE++V/A1xT1vDonh4Mp2Cr2wew/8Z3oEn93K1To737uDWQ
	 2w0JLnjkCO4mqDpj9Wi9+zvoWfPhdP/jWvtHo6w9WkOKGdcbARuG5AtYhDS92Mc6Ol
	 YyjayhM6bSQcOYzM+TxGpSdMhZpKTJWo3g5Ldz+9+B8h9twWK+ndtJ5W7BPV1N1E5I
	 jLTTyU9yV+hk5iIqgkvzEBHSmgy4cJadvwxxXP++N5TPZ9feEzmTpLGVgum4zucqbq
	 m8nr534/tLaOL9RQo42eoeYzu4cshVxBn4icoNNEKorMgfgstbkTVTCHJcPIVgsnG/
	 TiQlo7UTl2lCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965B0C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563819359.30355.3216775427113291641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 138ef593dc278215f5df61fe8b5a1c85e68b3c28edf27cec19a1348613e30cfd
Date: Sat, 26 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745638193
