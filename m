Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AA515AC
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 00:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A308C433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 00:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682643126;
	bh=Ml5xVuH78AKZ5JVrrIsCZFXdwt3A+Bo14osL+4wUfFI=;
	h=To:Subject:From:Date:From;
	b=lPAIQe+C7ZMSvOmd1+tMvMFAPBl+m+qdueHMzbZoHcVKydhDiRSXIRtWzhZVvn57b
	 6mozTlLidVbEKxhdmJm0NTgEnbSCKcq+BiBlK0/fgk2N/T0q54OxHSJ2nR7Emzlqjc
	 OGFGlsUYDq7fLB4zGg+VSitvAXBKmYQlS4flY65bqHJHJVChJw3ff1SJhl8DXfohmp
	 rjRdZcdxBnbs2v6WIaKiCyx7qD6au/vU36ue3DY/maaWAzihomRlgQ7uc1ZN/9/06B
	 xtcH+pMwLpeyObfkvdCzlHmGRcDFZMErckHbt1PkJypxJQg0Xam768dHoN6esu+pAP
	 EVmYrwr4/a8Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB38C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 00:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168264312583.27920.9006842498449412228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1775fde8b35894a6867a0f7842018c83c2ac08283f082c6484839875ac07d029
Date: Fri, 28 Apr 2023 00:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682643125
