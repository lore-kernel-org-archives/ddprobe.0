Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA0AA930
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/UAFTJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B5F2C433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700137696;
	bh=IMp5Z3dtxgaTx5Vn4jnlUrElDlSLgho4+e18k62Hlhg=;
	h=To:Subject:From:Date:From;
	b=I/UAFTJm2Ob/7WVZ28F7YXeMpv0j0J4PBI+xlx/fhchhK8TtvDIoophDnWM5f2LNE
	 UfR75qrY05xnsshU/GwA7FUL+ZwOz5a5Ad3oqxs+vkLRgu+Xk173+AZ+oknEwvm12F
	 P6eEIClhWNOzazrh0KOEo2ZtLmf6dsbzMcwTF626dOHq2dWFqJ6R7IzJ62AMvyahfz
	 yMdQCvL+CiHu63TD8sdXfKdTXeXRItcc2Q4F5ddh8zdpnJ/rFjuz/V2ADYi3skFXE1
	 4AFNkmWlKk6ZVRshnP069jhSyAXoENoJGJkF8vRU0yVUiZaOzgzAJlyR8QukkaSt6v
	 quGNri9ELHkyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF75C197A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170013769641.29534.9444591415065890147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a01ce8b71568ecbc0108d83f640bc30861f07612d1316766c28eb73affd1e4b
Date: Thu, 16 Nov 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700137696
