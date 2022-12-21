Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD3F7E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85713C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671628887;
	bh=psOxCluHjSMbREXfK8KLBZqTfxOvcwYlj9ca4oTIxh8=;
	h=To:Subject:From:Date:From;
	b=X7TD6/TlP7xTJLVVABvyz0kl7ajNeJufVnmoKrJUreIpv/vMKeDeyjHBHGCcT4+MI
	 tRiFezKayS7BAaNhtl2+Dz8if7eIf+XmWft8+Y81v+Zf3qtYdolrbCGLsOPDZm2RMX
	 iDr9CmKwTPF0MOs2Vg3FLhWQrtvs6VmmmqRrvRMd8HB26aHeCHxKQFXqIic0Grx8cN
	 di1/2BJBdao22VxIvC7pE/7RTDlHJqbmDYTqeHsPboJCdCSIwhnEPImO+xl7xfxO5a
	 U2gYuKuPcJZZUF8zTuHxquvJcNs86yilOb2sgvYIDh+CCpRU5LipUPcxiAm5TphqVy
	 mY0KuGyi5XiQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDF6C4167B
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162888738.1089.5585140044074367399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51cc24c7b9ef9d2eaf7d1c2052f4fb6e6d974569b250b0ae3c2d8078074f26c5
Date: Wed, 21 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671628887
