Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1767E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7157EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666342253;
	bh=Scbk+UQfN7qj9Ylf/VQzE2ZgGJfU8St+VVeRFfqv9RQ=;
	h=To:Subject:From:Date:From;
	b=iT+/heacKjexxb3GIEjqCrZ7pRptllFoW7kvGDE8fpu94jPgvunimaVgPn9LsOjXe
	 g3BZ5sfuzHcnQ3FSICV0qX+TBjEgpS1C6N0eZMWM96TatYvvcUysN9eT+yWJxc2rat
	 agSAz5DVp+9l6h5saK13htuqPHUupilf6AJQcr6WaJr82dFihvKkJV1rZJz+2tByTQ
	 ulZ+C8jIHMMbsxVRBrPVOkBDMHTkwnVMPsrpt/KuvdRMKvs0aydBzj+UUqY+F7eYw7
	 jML3v0crtALLwdqNPxdIIVUUQx7+eehZNwikt9HJ9eg9jLtXHU7khEKVrqswsHYoEz
	 ToQDRX9nGHHiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533B8C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634225333.8032.3528747595894110579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a709b266e5b271ee9f310414fb9e554adcf626ab633d69e03ea7eee0637810c
Date: Fri, 21 Oct 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666342253
