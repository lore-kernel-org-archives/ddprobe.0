Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DBE125D7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 14:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqqhk5j0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D97DC433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701442097;
	bh=W/crWwyvap/mlborM67qzKh5SRlOFRG+LDUQiyp24LU=;
	h=To:Subject:From:Date:From;
	b=lqqhk5j0FzSlCbfQEh14CVZbDmutuYTtp05u+/x3KYMP9+lltK3Rgtj6XuBErkON3
	 SWb5bt7gtCo6zDyL+FMjzbCPtV+qapBC6q+dknFWdqtbstG8Rn0tWzKs9h96J5Ne+q
	 CeOGNZPnjUBkflBkq4vODUn6Hf6/isTExocWt7O9eLzauKWyYsEEzCVmegWj456jjv
	 SwGKQ9+o08p59gVQ7vaPU7lnZxgO2pDu2ZKLggZ35LGaqYcPBMV6uz9lnsxGwr8eQD
	 IA1jooGFagcWojCmex0KI7JXeyUqKlD3jLDWlQTfuyrrclnL8BQPGBrknGhD4DA+SD
	 GHoNbR9lzluiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED90C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170144209638.649.7998110968700578260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7279ca0f9fdb9a5374c31d521ceec5b57ba6e480be7fa123b3cf2d46ca5fc208
Date: Fri, 01 Dec 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701442096
