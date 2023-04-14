Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4937F620
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 02:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E451BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 02:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681438265;
	bh=6GwHIjIN/XV+wB3VXc0kt7XXxV9/93Chhgn6jmRYBVI=;
	h=To:Subject:From:Date:From;
	b=OzpcZCr536cJGI1+TZWAcszBA+dNY9NtJMv2pCm7q4gjdalcLa2zqyH5fLmim6+kd
	 cZamxXGh5hZ5QlHxxvSf5CTeT0sNuOnvvwtwhKwYbUqCictCeSYgeMhbID6hf5ogQA
	 CKj3eJuM4/KZYuG2SpQstpoAfZwtzDyQ+yd6V2HhhfJ1Q/BBilxD+YdlG8m8lh5Ye8
	 JfD8+c0SM0+avp0CwU2I8+SJR18T9R7NAyw4oKFK8MlSaevzp4htbvTnEchfd+sTCf
	 kc5S8c15TbYrMtiofvvCC+9ZRyVhtR02o5AaIBf+GG738vFBy+Y7myJNZTBQwfbwPf
	 7Dtm+SIaGn0HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DB7C77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 02:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168143826580.10848.3957846686882164271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d18bb819b54bf4baf643a38dc1af6584410c19c4e548d47f03aaea7051b8467
Date: Fri, 14 Apr 2023 02:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681438265
