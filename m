Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47495637
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 04:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63A9C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 04:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680670025;
	bh=Y/rMqPvy+kFVmsdS/euqaL3YmUS/8NH+ng/viFd3CV4=;
	h=To:Subject:From:Date:From;
	b=k6gY/klbPJliqWPBRWIv+Jlh4JEl4670jR4/SPZuuS093sVfY/LPhOmuKLc76SohW
	 IJSLpN8UzJV4P2OiTXQDw05cu2DHnU+F9BSKrIUJJ7KuGQ8O4K7vyqr69hYQFIZ5zB
	 a+x2rDS9iuxxWJotaJMg08RmZXHypj1Vl2NJWMT5rSI0udtNcdfOv/P0nDSguKBkMK
	 lnwdmCN1hS7m2FO2NiAI/ZyI1JDnKN2m91MwW3IS8iBb9q4O5T02S/uhQZQMQGEbq5
	 QX+cnVyu29fbHUeXT6+6u9CDGSgORVY1yb/AptDd60h2Xjk8QkSKRJ91qJVQgQlEhR
	 ILrkbU0/6oAoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B708BC76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 04:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168067002574.22299.8185976090847505331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3c0d0a1f075a18cac0e396cafb97b6aa57ec180cfb298e71ee57581cf6767a
Date: Wed, 05 Apr 2023 04:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680670025
