Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465F68830
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 07:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DF5C433EF
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 07:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684309985;
	bh=mL7xOyX19xz75ia3zoWIdEIc+bA2kdCxwLvEi6au2CY=;
	h=To:Subject:From:Date:From;
	b=dCtpm2M0vlL7qqTQEaEIey3zOVvwoKKJyDHfRzIAE4Sqhp56KQgiHi6cmbiM6z9L0
	 vembT+N96kS76/bpzH6DfaRH4kqrwuF7SfMeou2Qw/r5lH2JxpUF4zCkj9LbAx3ICz
	 tb3jbpZUhrkL5zjCg6Cc82tC4ez/c8nH9p28YrUfoWnvYFAulpCfuS4By3UN2557Fp
	 KU0fSgOS1cYGXIBcP+iqPpcyrlefyDV0juyDAIgO66OT33aDj3Dk1YxkDZohpEeMEB
	 oosoNDGyFqQkhSEE5C+1APef+Zw8WPHlABzTHXJOXFDUEKNyMe8xXNGwBj1NnOtMOJ
	 xi8JjZzjPfa+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1428C77B7F
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 07:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168430998577.27809.17167925412643761139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9507aeeca35455e58fc7508c639ad7dad67ed1e9ccd01e0eb277785d57a852d5
Date: Wed, 17 May 2023 07:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684309985
