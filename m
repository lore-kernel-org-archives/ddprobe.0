Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C902565
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07E46C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674814986;
	bh=GnSuarGvtLzZuXifTyLODVHQIQSCxWABcMFCkmiGvJg=;
	h=To:Subject:From:Date:From;
	b=uvsNQvn2BMtrMmWceveE+aLh/Dbbcz6sO1OhIgwoV3rXGb50FksRanyRtxO2TXJEI
	 aXFg13MxezfTP9bZ6Nq8X+KOiA9g+JYTEAeXeKC0pMYEN/TJ9qocLQOsuN7gzz2OPC
	 QyANGGbxNUwJyivS8+vPKJynD4Ma3Fjn31nkdb62lNnWwFVvQE1qf0ic0br5pTSGDg
	 vPBVxNPASlSkUdiKK8Lm4u48uhitJPI7l9pQaSYtrZW68GxNjb/SH1vN3WggdWwfFs
	 OAHPlTteHIdhz0HrtR0Mp8sr1dZhpyaHBcaTbAwmHpauV04TUIO78D20L+tHFRLbZV
	 CXdMAM/OtSRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68DCC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167481498584.11233.14001112032026574018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0ae3a834f29034dc9bae4f01cd57be420320a15abbaa7f1636aa8a9a5ea16a
Date: Fri, 27 Jan 2023 10:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674814985
