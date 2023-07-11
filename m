Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71ED01DDEE
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4847C433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689114428;
	bh=hEuzAeRdrzXqVzSa54zjYHjzUBIXCmLkxv5wukGkEtE=;
	h=To:Subject:From:Date:From;
	b=rO2l5lXnKQVaKE69ON+urPXy/YEQqp0MolzqGPozW4LfstBVYejxM5bsc5BamoZhE
	 NV4hLJMeoBA6bN9PmocNHP9JUtf6h0WAJE1CeIh3mjO0vVaViY2MRHEMXWZ+T8rDeU
	 Y0L9dJ12/5I6Aqt9S/63/IVmvN1ifiodKZJaBFpGbjXSNHG4WfcQBhbpZJAxsB5glC
	 O9z99F3kuiDCvv+Oz5D6F0OGmULXXbfmKgIPhdhAljQCM7QGKVqhUPh1zySFPzNnwt
	 zKQH0TB78W03N/LI8lB1tbpOBAtAoTkCGn8YeitlO1RNA223mZ6pJDaUA6bIK7OfDE
	 sc7XC9ybl0u3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F0EEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168911442874.5047.571185312482761716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a316f4938e6a71b93e8fa286d174ae44d49c54e093c49b77081457dd7318aba7
Date: Tue, 11 Jul 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689114428
