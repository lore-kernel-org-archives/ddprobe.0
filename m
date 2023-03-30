Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4768BE6
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 19:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C96C433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 19:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680203345;
	bh=5wGbnONl4pSERrtwRpuKJYDT74nxNbxCAK+dqpGh7d0=;
	h=To:Subject:From:Date:From;
	b=NvQYDCjsgaXcCXoBHGs2wb0DbzuUHkuzYPqzjQZRNCRnF+vEvHVsOZ4wNaESedk9N
	 tnuP+3JT87/1yQZ4KTwUz2qXD30ks6t6DbeE7/RoSrnPyM4yN+aOR6z8YjjxLIDq6I
	 FQx8zs6u7WD08Vcnv8bfa9nhdpY64w6OVe1Nl8BqJFk0yg2d9Bvx54rjwC43iGHjvv
	 klUImAHUdTEmzSyj7CaWJt7KdmL9E4C55SruhAbH1N1T2MB14UFvyXXST2Mt6aJTXL
	 rIy/d3/CqwjtpneyfNDFUP1dRv+S0xaqgX1Vj/CErs1ujVr3Gmmpn2qK+ukGR2vXtJ
	 X8yUlYeudYQxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD639C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 19:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168020334576.18611.475941049266205567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e0eead352ed5fb487c22f1363efb81f34f0c5932aa2890c3c3c1ae23dfd83c
Date: Thu, 30 Mar 2023 19:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680203345
