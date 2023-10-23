Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A91524204
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhkuqnBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9162CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698103696;
	bh=rHVmG98dCEMTRCV55GRQRsg0pUbpOduonQqxuqaMBlk=;
	h=To:Subject:From:Date:From;
	b=rhkuqnBAyKNKA/NHcETGpdqEBWcsBocrFqwa98pswS28spg5gOETW4QGKi2/kgHre
	 GLM9cR8JR2gpzpKvYZfZC8cLyw7gP1TRk+tLVpAMkMExAbD+Zq9awmRKodmUuWQkOS
	 tMQjoWSH5CqPmIz7oxMT6FcVe1vzPxmPbOL4HrHE2aUYt6IIahDKCGU2k1i/pMh2+a
	 jKeFWBrjGHHQIO/lvpsJLgUOs0MTbx4k/Lx76QOen+NIJMzucI3hj2Q+TMTVQPY76O
	 F9TJD9qe8xTw/0FDtvJhPMozuvsDpPDk5rR8To+1ujZfFFUpQe9HfpG9EttF7EVS0l
	 hHdt8VePuW4oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D441C00A8F
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169810369643.24121.17848435858112931250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d50bc9377f8f5519f33b15318ba1ed10cdfd94bbbcf40c4c11afe88893af48
Date: Mon, 23 Oct 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698103696
