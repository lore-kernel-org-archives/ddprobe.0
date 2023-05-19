Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3901A17FF5
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 21:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD168C433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 21:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684533485;
	bh=aGWiVhbVWCjbu/rgOWEz2iPqp1a11PcMWU7NvyZdzIc=;
	h=To:Subject:From:Date:From;
	b=Y77n0aWZV5zBuK+KNrnUXAMPROQF+k8hl5NJQ90BwAEzjQxTaE6hv+f3ePaka49p3
	 jYuso8g4fTfSpusUqCJEwObCplhkaUARsBVa4wUTpbzTPx19sOS7WQRmTvC2Cy7NKS
	 /kbcsuBtVUot02+0LRAXCS9Pzdt4ndMHP/4SouDdvAAGlTjpAe3vGQLsLsSJGYWq1O
	 Fre1STYKzdJe/gIhRB1c5AEkjN/V702g1Eay6HPOLGKLNGpUYA9jjBOevkAEBQuzk1
	 hofRLbNOFK7fq17tK4qjFIpwvhbJWWH5UTwEcIOmj6e9VQbc8bI72BVNHDMDDUoKAs
	 ZoGt/rpoPJSNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD43BC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 21:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168453348576.18179.1116927972830996992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19328b92dc8eab4cb412b43f46d94d1a647b5b0661e604bfe67be848f329fd34
Date: Fri, 19 May 2023 21:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684533485
