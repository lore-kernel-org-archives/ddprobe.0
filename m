Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97422568
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 743EEC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665952853;
	bh=5pQnJGYlGJn/Vn3qvGwUcNRdN5h1A2G+FJNHZeyXRRY=;
	h=To:Subject:From:Date:From;
	b=RSq7Gbjc+zrc3FD1pXWAPnFMqzXxDzDoDeNyCTODlVSwMuc8x6/SMN814Y+mpSOcn
	 FrZ8UK/g/RIFNHIdoAxKtnqT8kgxr29We0gAvFFU3awRwMANRFPFHX6psq+rCvOQ5Z
	 2q5wMxbZO86JAjR3x/Puv/71lie4uDJv+OrtUr/yqCY88OT7zko0SQrNg9LM2JpddF
	 vuLSeAlAt3crcLL/6PJiRhgmfyriKjRkdXeUMPwqIxsIupUVriSZe1Wji/M9CXXF3X
	 dVqLAcRHrIrld9jsKmD1Kzi/jwxFJtNmg+nTcXiIkXhNs1Mw80Y/vIBl/9ckvgXtp3
	 lQn8E7cP5ep9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5552AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595285332.22781.1943389744408329668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96138f451d84b1d229156709650ed4cb06200734c6a75e5e96aeb00bc15cfcb5
Date: Sun, 16 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665952853
