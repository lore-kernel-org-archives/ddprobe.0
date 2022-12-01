Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8F010E8
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBE3C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669880454;
	bh=Jz91T7LRLzr92HGiVoPPQ9cFIbtbv7+ag1qIHLCSGQ8=;
	h=To:Subject:From:Date:From;
	b=imFLwfHyt4cJJUkW8eV1S/KRhHYgRZzqh+awXjzheaJCzWxKR24QhCk7ytHxB6V+T
	 2hheBVaTxKw+nFJaVAHTiDZRKHigPdK49+HRUfYnBulUvmF1K6fWq0tDTB9f/LPXON
	 CJOL67yiWe0b/FucHcs1HhdVbR0idRG6E+a255GJ3pENgph7dES/mB74pKWRVZ41Ue
	 iOmDxoNQbSZ9gpykt5g8my0D1uaYCNqpO3fqJuqm3fHz6spR5muYpbq5VqaPFIyMOx
	 /psA7Mtl5Qc2feY6X3kkOdqsgroBfAu360M7G+nYT1PH+zba/U3jUAJP1+IeTzqvON
	 GzEMPN3CADJ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53712C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166988045433.1726.10041941948156881309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8451349274df04bff533aeac0c0fa1e351f2dc7c48db2e3a77f8556a0921e35
Date: Thu, 01 Dec 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669880454
