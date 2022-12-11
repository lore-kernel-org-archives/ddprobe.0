Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DA5186F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8890CC433F0
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670758887;
	bh=xbubVvlHHi8zh2lvmZwcNTQ3nTogaakjUzCqXEGEgFU=;
	h=To:Subject:From:Date:From;
	b=Qh+x3SHIJocoNPjbs/s/+NmGEfGqTN6F6DTnYM4QdZmTOA+HvNqotmtJQdotNbX+S
	 qplt/PFVufc6fWgrRz8a+yudgOlI6mnP33honEPqVp3o6cRXc0HuA/RYjfjyrHil4n
	 cHswIN9oBVNbLrYyW9iVTIt+zCGTjFGBVwSQOWlXWryPEJyMT0qI//b2RZAhFtiBp4
	 4quy2LzPhN6ZBCHM9I5Gy8SnrJtpb5he4JcOSW66EI2dhgyqB//HrprtUwYyvMJoTy
	 YfwBf63q2ZPpW1HgugK+VOFKBJUdKCriQibs8ITdcrgeeO+HRcy7PQ0e5CM/eCvPsL
	 /HF3xtcmAJpDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E26C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075888742.32323.13787385949905591594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea223f5bd551943f0c782ae9f1bfd8ae20d1d701a75cf6b7c6db409d3427288
Date: Sun, 11 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670758887
