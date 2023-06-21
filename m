Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA4418C14
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47F1C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687380788;
	bh=rnCXxVHpq2Iz3tmVu/+C4hsrYjCJMrjgeski70bbuRo=;
	h=To:Subject:From:Date:From;
	b=ESev7TzdrFtt0/tuZso9TYy8DYC9oALgXSUuuYrVBOyqdU9sO/219Z4lY417oSTir
	 ZPz/kwSLUfPXg0+kdUu9aP1NgAYZfD1VZQPsZ8AaN3CB4V9cvDs9ppF39E7NkhkRvs
	 +Pq0mq+YglZxULNWvOZPsGzR8EN3rny3nST5a0xc66SQnilIo7tnVWCLm13QcNEPKB
	 zuR//iHnQAf0B/hWpuWaJW0nXrHblI3J0cEvj1ceozaV0ntR2uSefv4rhpfoilemoM
	 Sx1k56KvE2N32Bn3lgl3JqbzsgOmRSadIn3CnMlfFpn2ueDooCbud6MNGpR6WO/LGm
	 T/SPCNIKAU7qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6381EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168738078867.28527.11150929580991339927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ef0576903999f5058c742711e126d434516043f64ae19fadfd5e5c7f960254
Date: Wed, 21 Jun 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687380788
