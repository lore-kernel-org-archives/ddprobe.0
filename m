Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FE67E5
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 22:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03102C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 22:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676153646;
	bh=argC8SL+WBPwDJPomrysWFxeqjpF5bocxyT9DFBLvNw=;
	h=To:Subject:From:Date:From;
	b=R8DbVmW9okGuJdutW89DL2U7FFXY3T8WM7gJHbti6nECsTsCxClnnTruyBhUbGlAD
	 bkOe0LCua0eaQeXdX/L/2rGvBAF1CJSoT03/pj/fv4H/GNLIKa9TTiAUPpf7NSDIJU
	 6r4u+6uVyCz/GGaK815OPO7hFCtk4WA6dzm7jC5h86xm9yhiIynYjqvy/JmuMxKPc/
	 bUwdC+XMI4cumot2Bo1c3Nnkk8TYfonagJ5n1Wruni/0lhSnT/tH2sWG2K3f8HdMZk
	 tFhkQrLxZhhipHfE+gtcQ1om4Q8Heg2oLZ83rNJvMM2KW1pQLlEOBBfk+A8ZH+jHbI
	 1MJheiAkaOjhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDBC8C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 22:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167615364578.13904.5789074070328192981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4360e0653f5ae24e47cc97fc685fc63826b1f210536e94703d6abe6aa1c6679f
Date: Sat, 11 Feb 2023 22:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676153645
