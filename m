Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22085384
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B65EC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661557852;
	bh=aqlPnFl77X12+HGQIcTnjTJuDqFwJXZpSKHeGtI6Snw=;
	h=To:Subject:From:Date:From;
	b=NnLFAML5/jfZYGgelaZpyzVFheHccGTXAelPyxR5drde7Kve59Rd4q5DEDHQWXEzs
	 7ekx3SJ35JQLvZyqzZdrlOBGVzeddPhCTB91MkumWcsQG8f6AIU1kmrjoK+yWPVZQ9
	 3+ods2bv4eyVplLz5qZ6im3MQPsw9zhpllIxkGP72jM2NDOE48s1vPkhuOAtXyx//n
	 lP6no9AEsqgQhaOjQZQg5dkmrT6AN392yxq7H1/wjXsuDJBO6Tx8lfhl9PbADjLl72
	 gdoKXn5PJjn2dQkXCw5bfpHE06G6lJ1zTjvj2Wvi0HJAo/luzITDsGEW1W3x9wLf5M
	 IavCRN7aXmWXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A9AECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155785234.17704.2380252055485256862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3691527606566e6fc1f103a79d138158c44416763485456b9374e165ea8a8ac1
Date: Fri, 26 Aug 2022 23:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661557852
