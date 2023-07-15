Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9037EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 01:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CCFC433C9
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 01:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689382868;
	bh=Jmjh2zcuDzhY6CpMyN76YNpguHtjAUpr/IrVDohgUcQ=;
	h=To:Subject:From:Date:From;
	b=qLw8DGFc2WMV2bEW6Mygvs27Evd7AJDk1nwfqplOD3dpjlb78eTPwM+tU6oUttX7R
	 PzaZTsZarCXMKdrUNykK+jES+6WJ3RdNw4MvOm9Iua9wOPpAwIE9nKsdLL0yaes4Jq
	 ZzyuHPfNAQ2KIFXsXui2+jcTu7Tc/44jpR/ADMAm3iDZRNDAYs/dIZ84SmL+VbdlFf
	 7Xj9W3HkTW1sn7SvkNlJL4AcndmprzdhWkKp3lOqZ6unrKXoxyAEeqaEyXer0fgWZR
	 7ThpgtT+AQiY+CApP1ZwkW7OlusHk+6RPWhTrqlHPuRLztxuyFSWkvG+/CMyXt1+oB
	 vyalMIRoX7Ung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C46EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 01:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168938286866.12786.4701523866692653617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86b7cd9076161829a44d4efac850b531545f59e5821adf332168f4d25c53405
Date: Sat, 15 Jul 2023 01:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689382868
