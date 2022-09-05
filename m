Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD6F3C35
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C991C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662368453;
	bh=iCiz2qR4Mls2u3//masDf2g6D3/MhQ22yrXs0NIsd0k=;
	h=To:Subject:From:Date:From;
	b=bVrV6t7uObacJAprHKILhFb+d+tsi4Hb9t5AfrSkak9tfI5FGNYRLLCd9oqwTQlB0
	 Bwkvt3QQkBBx2vAZLDoojw/ZiQjPjm0blZE4S/T1vwxLu3xUS25y1c17IlK5UzjoMG
	 5oiFPP4QivZMK9SI1kLe96AZL0z7ow39sCqpQM83omHsneshNstnXQJDFDYznkyNZK
	 03fqKaw0lRIOiQrFB07je//rDr00eLKG2LUD3JSCkYfwOCL3lnxZ3r4DV/KGkbv3bd
	 wxsiO6Q1iZ/ImPPiHbKQk6jGDX11X08Qy+Wxz/4M5p3Q6FkmSDEE9/Ecal4bFa2iW6
	 oSikcUJvMXtPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639DCECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236845335.29257.10267693589117277286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448415bf68b68d601ff9dfac04d1fa851e0e77729639d77201a031774efcc052
Date: Mon, 05 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662368453
