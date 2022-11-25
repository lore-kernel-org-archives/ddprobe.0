Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F3C2F41
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B078C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669416054;
	bh=DOjhXZyu2FYxdeg3R7vUTEtPARe1cvxsH8UWDhPF0O4=;
	h=To:Subject:From:Date:From;
	b=Ys5iaUxHBprQqOerdtsGvkePOTbprNnTIaiVEQnHl3I3sXQWC7mcm+Qg0uPItU2f2
	 Zx2VRW6wj7kooMWKJYYvVQFcJFfrFreoBR6vslffsaju4TfSeHO8SThiTBxqcXvzjF
	 YyV0nQ8ph+wIsdBsj3BppqTivUG4MvTAe0Kka/QBct9NTrpPISl/ZzN1+436ROKI7V
	 rxl1CzC6M3G7jRoxNxrcjkUywAw6T8DKcBDvW4uWkdHMTKCElPqSnBdGADTa385WUn
	 Hbm+LH0zzrLIa91qIZGFpkSYkYUv78tr9PLXe9fBDJZMqiMj36ACUGW+Z1Odk8JWel
	 YkdEMT+Go8gBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502A0C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941605432.13426.6669981549601719609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2f1b3b29bc8574c723e06ee3cf5f7e825983d01f9b938ce62b56cdaa676b7c
Date: Fri, 25 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669416054
