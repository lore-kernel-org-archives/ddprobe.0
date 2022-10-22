Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31DA7C
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DF8C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666420853;
	bh=WSu3eNmNEcYXg1Y0pqpKsd+qtpfibhVJ1WqGcXqiUu4=;
	h=To:Subject:From:Date:From;
	b=mTeqX77JcOjq8UdVAhVO+z790otkmL90ZUs3ng6qRS9DfoW1SvDOkfqXQkTtriHvq
	 D+HCUZJuv/x6klo++rFIKMsIaiw6w+EIXnxR5ZD7ZBPQriy7v+FKlcNq2HdBADbTmO
	 EQtHHbB41EcMJchkt/s7+l0ag98gszSCGokKScP2b2zOAGUYOCy7NskF/0N83f3FgW
	 KTbWb2mr50Be71aAlTu08NA3GPwwzrkOmf8vQ7rPZwsCTkJpr5DFWlf5wKIHiBGxZh
	 64R74UM1SuQbehk8SMJHx1EBpYsgKmBulktYJdHJzvo9MVWpxxD38H1bFYFLSv+Ek0
	 RvGUuc4xAqOqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54298C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642085332.32317.3233104206041453654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7050f3090815e2d8545b64c2cc27c2b8f45d21cd7753e190c5fcdc1f4773fa
Date: Sat, 22 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666420853
