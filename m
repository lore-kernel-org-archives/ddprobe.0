Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC570320E
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77459C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666981254;
	bh=9oX1Dz21HuBkMcYiqSooVKTXRRxsfiZ+9/hvBWA1PDw=;
	h=To:Subject:From:Date:From;
	b=u8/6O+hEsXeAR1861kciPAXm7A+Bi20oGKwFrZIhwb5nhjoWfWc5VloIKWpN3emWu
	 n4HSPTI9a/H0LyCTwuLVl5pLnd2+WkwuIwbunx6sS+x2aIwoQhhO+d2tkLJXZhbiHn
	 MjfJ2sjGooX+3rJmvnHMz/bsq+/eWJp9BCj+sC2K0CuF6s/tii7Anf0rwlBNkiAmGu
	 NxrfxZMnlxD7sBG1P7XPjaoxwGjuxjbvJc9H+w3u2DZVzA/CrZFZSuP5DUP2BllsD8
	 EbCLPjHKYJUiXlUKT8D8PYcJNJozChFz6efOjrxUrW+LLx2UpJdRdFnfPA2lwdL9nI
	 Q9BbHc11Ttubg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5684BC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698125434.23416.13414938906707507169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac35be662cb7989d0fac7f982e47a8f95f7ed3038dbc7eb26e20cd2ac666eadb
Date: Fri, 28 Oct 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666981254
