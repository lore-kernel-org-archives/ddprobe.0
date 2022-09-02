Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C65EA0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7060CC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662115253;
	bh=tVmBQrVD21TiQVDzmCqNiB/stOYghlPsqdG41Vhhz00=;
	h=To:Subject:From:Date:From;
	b=MSuJuiY0vUi+V3oQXYC4sVplCJ0NqfCaJH4oKTocIMqLB+PB1it7Nf1qUKMhBh27F
	 BtZcudBIeX2ZjHZ/DzuYnydjtzdZnYdtV5cWatlqcPCaYyFm+dj+0aZuDGOjZtNCzl
	 hFSowAj8+MthAfdntpmhfLGZQIE9jGDPIfTa/Lb2GGtVhjmRPvSls5/kYX7Mz+vTDK
	 xa+j2jnom7fbpYSEJooRl8F1mCXm/pyVHvb7vJ37ZYuj9JNqvzYHPti8AoOe3J5YPw
	 p9GTc9F9mZko6J+yM0IRhNjjAYF5oVH6+fn92cnSDForheVDPXdrQdiqvaubjXaxSR
	 tOeLK7qluPrLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550E8ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166211525334.22743.6072878775220587342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8949b5aa243c0102a1b2bda46c32a0ff7f8402f2943503d394969bdfc51248
Date: Fri, 02 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662115253
