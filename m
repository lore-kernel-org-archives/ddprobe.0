Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8768F6E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 19:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A95CC433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 19:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683055626;
	bh=TEezSkakF/cCpV9uvuWpu+uEwEZACL1DYrN+BxEoUUY=;
	h=To:Subject:From:Date:From;
	b=lobG0VNcaZdcs5kfo25wowoDQrGpKVxSFU2IahBvda7yNhCJ1n7i7FLNOZzo8uB3S
	 wB+PUJXDjXZzMpWGOpaHaMr0aSoku1RKnF6LrS5XwNVaOzZMa2UvxRV/5w9DUsqMXk
	 HVXFbQJ2Brqd6BLeJkDUqfpx9ntU3QvHEzz81nDwEi6cFk/0DDNhUAFsMOYHcqb+ar
	 vKr3wclQgMtwOKlRTZbcEnTiYAWijWu5GHmN0s5H1s2KCMk63HiDBPbBgQff4PQlQH
	 Pysf55ti7IMWQm6kcXxS8hA0gq9kAsWevSgMNRxwYbQVEnj18fZ1VDSF02u1se+eEA
	 AfCzbMU/DxX0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4B89C77B78
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 19:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168305562585.27093.11144650433154824165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d65376237a7af3f7f535a214ac6bd64e2fe537aab64e51f8b0c0e481f3608f4
Date: Tue, 02 May 2023 19:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683055625
