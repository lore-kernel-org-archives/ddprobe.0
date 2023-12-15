Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B0E5382
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqXgpYli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B03C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702612096;
	bh=B/dZEkt0uVfH6O5d3HClSw0nayjGGQ8HfsyUBDNJYEg=;
	h=To:Subject:From:Date:From;
	b=TqXgpYliYkmDVRZL5KI5eou19wdMDRiD1tyOzZhMct/8McfX/onXilXn8MW1QgItZ
	 RHi/YiCj8d4IMFb2j63N7HsBe7qEK7dpfHuIQJ+vME56ArZFrqJwMSEhbKaIpByavr
	 GihcyBnkaFkWg9vuA2Dc0GhcJfqRH6xDOpcYswLk7qfqdw2h5Io/v3W5nBD7dZon0r
	 VvwbWeDTfpddpFUhi1r5aQa68961TKgFtahJiMW7NnsTtSCqbvtPikOW1rlkznlGYX
	 SfhE5NxEnnNwt+kV807yZPW19ltI8ESvsY6agGMCax26MgKBddQ+o5HQVLx7MbHoq1
	 lg/CcpP7E/c/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA66C4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170261209636.23883.4467880517491685902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82237c922eeb65c2f3e6fa8e70a3db332f46743820b1ff89379c466ff6296e4d
Date: Fri, 15 Dec 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702612096
