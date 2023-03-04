Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E745184F
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 06:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA333C4339B
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 06:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677911225;
	bh=QkbKB8o07sNAGTuk815iboDNFBuIMyY+zleugpmcCE8=;
	h=To:Subject:From:Date:From;
	b=UBUlrStDnI5jt4WWBJo0diONivi5Ued2m1dMd0hrEZCS/Pth10OFOmXHlw3DQRvBd
	 odimbpbheiZV5I/khrNWF7bJtwjsQ7XjfRAIE1cy6yjzYx52vJ7KgWGHpvXSTy27xj
	 GQfu4nv3m3xlAkQNdGyDiW/FMK0v/wkCUz4X+HYZy2TwvE9FI8+o+OrWovhtZNT/6C
	 hMRbFsuhpP5+KZCK+kbdc7VfZjZPMqNGhd+4dwd5l8xlQOMsa8OY1RLXnuKIGUCsbu
	 fla9vluc86y2upkrW5jaGhGtan6H2aBFokyWzjMK7gt/rPYvkJmd1Zx256b7Y4SYgj
	 x0VcbqVwC8tZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF582C6FA8E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 06:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167791122576.12318.16829207694363831177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac98fbfa7ee01dabf73b0cd672ea6560c40cc1a21e04525d6f4469f83cdf9ed
Date: Sat, 04 Mar 2023 06:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677911225
