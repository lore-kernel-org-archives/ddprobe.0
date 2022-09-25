Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31174682
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A1CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664149853;
	bh=TDWf44hztjfVa7lq/u+yuI9DRhLJ2+JfALZ+tqxdqjA=;
	h=To:Subject:From:Date:From;
	b=uBBApw8MHurRwki5atg9ztoe49qA6Pc0RrhHrw1nX1swgdyqk2a9LGtrcWp+X7ALU
	 E57QY7dzqAx8pWp7DhqupIoKS67Jze4BBFNDJ4dAtdJACwF+PJhFSy2BOwAENula+s
	 J0sTmLMtw/OvtERJNNRQ5Xrh6x2D+3FRtGQMhABZFDoqpm+VCnBCP5k25DmsW8xtHu
	 aX+j1J+hQYgVCLQIlr36DPlAMgK+FwYEFpDvkNTbuf4BSxWsR+Ns5r3HmnLbjqNy5h
	 ZOuPeuDKErzItU+NLskNyojvhtAonvms3rmNBBtkgh9nlcu/Mvt5fTAGHyBca3isMP
	 KqY493Uk7FzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59206C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166414985335.29181.4201399070541992827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec12a77062fcdf5551783dba05a9ab200f90467b13f904f96f5bf6398cb02a56
Date: Sun, 25 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664149853
