Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3D62F2A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6B0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673624487;
	bh=hP2AlVuIuZwAQFY44NqpamAoivR1c7fXRBadxuhKrUQ=;
	h=To:Subject:From:Date:From;
	b=MtWygVi90UTfmTx6fRXef7xT0pvjLv9GQLRN/VrU/6iC9UYo0OVtWDFHXnAhPpx8b
	 /QtcQViXjDyFZf8sMjgqDzBDbMWKEqxU1hNi9Ccf8qe8B7BAUlCa8Ne/fNuGZ2rUy+
	 jk013l/OMooWzaidZUK4HbPylmQ0Ln1LlIztyinnBUcXGWCkpS8T7SAo2ROT+Db9Oe
	 1dYuzVlhex7gIgGNt3v1flFadpHZheDjg6uqkkRp1i5jLkiLuUc6EyzCutpxHZPtPz
	 innegbNz15ZUI5LNyqoIe4BpNCoKySGPRXMjpeqweyDs7UayHhzteDBfhQuwx45zfH
	 7S7i3VG+xTLvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61EDEC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362448739.28816.9729706401379255214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71038f8f0ed64f4eda13e59ea700edd8e96ed5bc4d9938fb576efec6029da3d9
Date: Fri, 13 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673624487
