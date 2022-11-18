Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3BC528E1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69603C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668789054;
	bh=3JiU6wb6fvlIYJaUhnaUQyx9Dzhvq7qFDpUZvlu0ULY=;
	h=To:Subject:From:Date:From;
	b=EHQnXgz0EA5094knI9hGRn4ADpp1WYT07qQjizc3GSLd6+pDZ4HqquOVagXCwTXXS
	 Q5XCvgvGIrwlLQI/EuhwZ/+GW7+MzOUolPn7Xx4qcBklVFplwHnArz46GedWfEj7Sc
	 Kc2fPYMF8zSbSrMklNqTu5kZ7pRz3DmAOo4l/+JjezD827vh5jDJ5Ar1yOOwGbPLkR
	 fLyXbEnLy8XJXLTJwFGd7So4ficstC3NuIaRAFXtwiHbIWlNTHVXpnToPPj33/4Fe2
	 tGylMe1p+fmCHz3IPu1/xJBWlHoGMwDMf4mqWyAHVWjSy2uPDNOmJOpFJwthQtZ8yz
	 GcsGHfAAvW6yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DF2C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878905433.7940.264252065795958534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ad599503f8a35bac7b1d6ebbfbf970f46c2085a15105ba9e6aba1f1199b473
Date: Fri, 18 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668789054
