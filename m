Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0FE4419
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D672C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664913053;
	bh=zfD7GSyb0U8Btbf2N/QV0k1V06uuTW4+i0q9wPplqHg=;
	h=To:Subject:From:Date:From;
	b=dSlPrJXcidD5Ukfr9olz2TYBX8XNSL8NF1K3mJEfZhtIAdWWWhQnRrapGj8LJTM2I
	 kqktkR0t81jyeEA9UYsfZ/KL6WZhF29lsTeNj6IwGBti9Gpa+k0WAGvbeeyeGFJDbS
	 CY7snRZ0YySxkLMc8eptzX8HsuknaEbiFB+DkQogHpKEZAj2k5kc4QBmYebgiW9sRJ
	 rf/vCN81XUoL+31aLiRYU5mx99pOPpt7dE5j1uc7BZPK7kCUwIaRQ6NfUgB2fjOyRO
	 Q2dGAZsaegG20wyVpYnAHXPs5sUSoLIXbkHT3Vm4t2HIZEdUvuej4zEQRY1nW4AaS/
	 anfzPd15EO5Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52957C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166491305332.8436.9920920609532925333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34d83b3adfe528e60faaa22db4a29e8038147d9dc226e3cb884a90a4a141d71
Date: Tue, 04 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664913053
