Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6081258D
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73861C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664878253;
	bh=VFtB862h+SjcZi5uCICnKq4JuCQ6WCPE9ZXB7JzkWFA=;
	h=To:Subject:From:Date:From;
	b=fFeUlWjjx0+DRkd/WvCNLA1F93QeHJr6lJ1VUl6DTjcngRCl+RkYli9wN9Ksuk65Z
	 Bg1lInM4uZiA/TM2GsT+G7Fp2FtL91RK/OrmcPzIU9z/rv9B6EUHKE5p2d7R+fyNxZ
	 a2YMthBToMz8fpD8s501jKi0evOC25SngVA9Pl56x3kI/oyEmhJeCEqPvY6T+O7NkI
	 Wx5zTOWzDEE3O2itzLclvkafmfTW7OEyhPMhhcBi51rmWDzmla2uLuMikjI4KorwvV
	 62INf7ZgkPSrdu8RC4g54kyGPI5xk1Svm7fbvGE/DnDBePy5ElX5WBx0ja3RHfBXH2
	 P8zaCG+XCisug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D6AC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487825333.13511.14602664989569926056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850e289f89cf4172a1bd7b92c07295086b4cf50dc10a96aeacaef41a105fac68
Date: Tue, 04 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664878253
