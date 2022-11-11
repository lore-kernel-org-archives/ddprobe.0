Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE85F320C
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71AD1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668207654;
	bh=hNVoG2xjt3Jn+2f0wkQELgpVFhptYKR286imvuWg0I4=;
	h=To:Subject:From:Date:From;
	b=jgsrNjQuTJu0Ilu80/DesNM7my5EZMsaTM1alvyK+A9wxokoe6H+OtfS6j8uLIgNP
	 EC3ZotcJv9WoKWdj6d5cnmJT8FatKuzSyEIdDujitXuL9QZ9taHLIpyRQgVjOpaAwO
	 V+m1yypwfnDs/+5nuXd6fhuZ1ok1zaNYZX+sefQ77R8cXBtNzJd6dAYkZkbTSV7XGP
	 JgQxcgdeiVvaPADeZ1GNmbFvwIZwJ2ROsmcAelPKajTG+JHwNp9EJJdH05zw4tqtqU
	 eGOPzA8Z0bbH+FJNRdJ+Dp7iIfgwfnI/o4FgorkyYKh53aSGBjBUo896HyYai+UYRL
	 pkQ5gjOPIY9Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A68CC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820765433.25580.12777591122990951218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9f7260dd2a8c0985f29631de790f22920b452d97ec4ffdb66d76a63211c164
Date: Fri, 11 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668207654
