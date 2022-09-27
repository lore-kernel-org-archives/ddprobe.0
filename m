Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC06733CF
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77228C433B5
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664311853;
	bh=AaxQ3fj/IjpXKULz6QRS4gZFoVvcXvkV6zGj/xHXbUg=;
	h=To:Subject:From:Date:From;
	b=puxHXXKzXaB3H9Zz0RUWamyhvs9LhNkmsDN73E+0XGo+QPBApNBSt7YQjX5wxtTpE
	 d0mW3zLJ9w2PFqCjP2bppEwGXDv5dUqw453MBeHCBGtB/FNWCcfw8nEK8C0q0m6G43
	 5qO60JYcpA6u/ySXKDxxdkFMgV9H/mmjUW+Iy5vRw42xNU2+mWyO6Q86Pt2jRbOFGj
	 h/5B1aQb5TRI3fyeKru4dZTtVQfkRLby712dVWzH+9Mvi19o3f5E3ROe7aR6OSX0O2
	 Yca9LytHeZVvNwwgBkE2w/Vdgiyb8FJ3rd3r+vpEAINm91JO0aVP9eyaXga8ewhstD
	 WdmtR35GTk4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DABC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166431185334.9011.10888623785592751836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf7cccc8de6d0a14ba6e60911b9c3ceb14a9ba458f1086275da48300ce3b8c0
Date: Tue, 27 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664311853
