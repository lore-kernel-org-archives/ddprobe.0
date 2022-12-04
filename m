Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB8915A6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9DFC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670126454;
	bh=Kghy1wLpRceCyKTr+bUAFQRA0Qqy82j2Kn4GoM8f3DI=;
	h=To:Subject:From:Date:From;
	b=aaLKRtQhocgrpZHctJRYnbJKXXTydrdNLQWXqxtW/YzQyOdoiVyNodYZmUq5mZNSq
	 fgI334bPeyI16iJSQOneAjL5rhOmWCYm7bJaZu7PJGkUxePYDJZhmC+oSYCWTF/VeY
	 8DUFEgfiylcdncM3fipFe/RgjI52HJC+Eohs/mVjh40IOy4wHeWd+eezTNz+XvYZvm
	 XbipChF75OVV/RevTu0GNXhut31Fb8PtW+w7HJxBqgtE8Bu/gobA3tfs/kSuVxemYE
	 rODnZ0QNHaR83/ekowbLVzmQ+kT497BR+j0jn8u0kLsP/+DFbyJp/UaOUQm1CVW6jm
	 /g6XHDjWc1wAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E2BEC4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167012645447.30583.17237511042289267230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19fe10a01f3186e6092cbbf5fc25c90eeffe1fcb2d0bcd6e38ecfcd2230be11
Date: Sun, 04 Dec 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670126454
