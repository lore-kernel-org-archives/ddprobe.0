Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480001841
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7695C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680934865;
	bh=DGVeC8JhVmN9Iyy6VRr9zaztdWhGTTuZVN3Cb+v5LO4=;
	h=To:Subject:From:Date:From;
	b=o1gHbn+DYs7JY6+/rvbmzWu52tAGsugtC8krn0L2YlqAvB7ZllE+QmfOe3B3DquVd
	 xduvool/TpNhCYq6c/+YpMdiTOk4qDyi1Skw8Du+nLfiLp+ASxKTWZLjbmC+N1PItx
	 X/JfZd2czocwRwcw5jVXzXw5C7RXNKP+Tv5zF/GyQRut3AV3Vo0+WF1NJJcDRDMKil
	 xYMdaoerxC3uxBoAmbPOKLWyUYzOsk9dQT5K+lijUsTV+Ex4eUnQ/7ImTEZVMjhVtK
	 ZZ2kX1wXDeRZhHPbeiFdjCXXZe/VE9qRJ2BWaY0vDwaSclbWz4xIVUf9MRmyf4qM6Y
	 I3moSANoEP/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC487C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168093486576.30109.7181521447020164482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58959ba047133472eb036b323622a1c704667445fff58d1117b34ee043351954
Date: Sat, 08 Apr 2023 06:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680934865
