Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094818481
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 14:05:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE28BC4339C
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 14:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678457105;
	bh=Po0csU7LZqL+ukvk4bpnerKRoZ8k9Jys+BxFzIw8/Gk=;
	h=To:Subject:From:Date:From;
	b=dHethA6S2j37qnqbTLV3zHTqLGpn6s08MEDHhFbR3BynRo5Bk33Mlj1UecgpdlwrN
	 j43PeLzj+/mJU9CKDdTmi7/wmZSIfGytf4AhEI4GUqUMOmNnUa5oWd7pjMeGYrked1
	 jXqGOHtqNKdeW68XDNSlS6+B9HgSAcvkjEg7HdmV4Dqtw2qCZhDpj5431Kh/rS6nxj
	 HL+fRurLoLFBNw283fVhqUZxrp8MOzDgx1MwGJXCav/IB0O0K8Mr9tvnt20ZLqR96Q
	 b4eZzmPX3bSbxoto1yciSz9uphTjB61I5bgD43jKr7h6m6hL2oFVOub8nd+8hfB795
	 CWluj2OLacEOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2524C6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 14:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167845710572.23193.6781042290491762508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9458af00d52df4e1ead3cbdf098c4682386dda72bedc1dcd24ee0edebe63f662
Date: Fri, 10 Mar 2023 14:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678457105
