Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D463F1101
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D75C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667610054;
	bh=jb9PkDuNQnDLZAZxqcRHMlsFPSX+bJRfuGVXMYpuxA0=;
	h=To:Subject:From:Date:From;
	b=RtK/CzwyTmjsoP6SnDc6AnsOpWONKX8Ra28nqCS8D7PGei/6nrnJqilzRtw2lQFXx
	 i/QtJXV2VUD0CGKUcPvyf8La/MKwv+P8Q9UJ+rmdgJxdCP3bnCVNXW1Rm4yXxLeSvh
	 hsWhmIPivmVhLwOggD+QP6LrP1a/qxfhCSo1BdbC/WLBMTd2zK5Fj8/b0oRed+dVdY
	 ofJ+RWYWEzwOKMBtsjEi6lnlq2Yip/aPy1XkZajlsFR722h05Pci1IP93L6T+Ct13T
	 p+RD55RfRhKxk3rfwECXvVI1jqQHZdEzmpNlGb2Q9unMK9C5EVwsR3Je6rtYcFQT1f
	 TBrinuIZjL3Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B6BC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761005441.30076.2471817672702262112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ad9a3ad23f170934ec7bb3b6ade9c7f5e221ce10f41e0a95ced5c108f6fb01
Date: Sat, 05 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667610054
