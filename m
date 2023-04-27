Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681B523D5
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 17:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 192EEC433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 17:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682614926;
	bh=rdoFZiyIx4UvMoeKerPNNW1tpCP2pmMJ4+iA0Lq94Zg=;
	h=To:Subject:From:Date:From;
	b=ezvab8dRoAH+U+8HDJ/ACa61PSQ9F/pzwRw1zxod9SJr3/CjB2amnV94QtZKwuxLR
	 1sDdOU6PQw31gXBMfwdX7YYOY6RLewafX1a73kBSkCwJtER45FuEI89V19Xc1+/HnX
	 RSsklNcYXYSji9YOwklPTeYXvlMHKeAcc2rND2UAFJP7bIDQJ/cZS7DoKBipIraEsy
	 2JAgt3DleXiNsz+5q5cNujKeDqaEZcaM8lbGcoaxDIWSsK68UdzepAospafCU6JtG7
	 TqmQyeaekq/Tj6Zlc7lqE1K0nACYCqxSORk3Rr+AK6YV1SVWHsTjbG6ajmEoNwxIEt
	 y3gjOZaL9T+Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98AEC77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 17:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168261492580.2418.15405473341705571123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6abe480644c76cdf759ff39c9747a86545bbef4b4294c92ae2ae64eb5a2ff504
Date: Thu, 27 Apr 2023 17:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682614925
