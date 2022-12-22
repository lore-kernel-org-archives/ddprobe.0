Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96F923AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8097FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671742887;
	bh=lEvV8EHwN1t3mkY6WEwVgfQHIaf+DJU/s083/KHTQJs=;
	h=To:Subject:From:Date:From;
	b=CzzwcrLYSpxhiEXMvIx6p7SgtuZSQCjdAJLkS9b4d4yy5+ZVeMwFT1RJ9AhzrH460
	 gfO5lOI2vHDJEQelZKR9xL60GQ6/xDyp0pJ9920Ux9FJkc5jRhC/9LO7cLlwiPWXvr
	 v7Nr0wGdJHQeboMSIbD+LGLzjtumPeO8pLz7SzuQUXMO1WChtwjznY4kRZJ5nTSJ5+
	 TpYJAEdWwdrTky0/0j/zpYdSjKOoKH2en7fOnNNTTmvFYoIOS/C3jEBCKSI0UDVQE1
	 lY7luoxusw/GBI0+vfAgOqSjmBPJ+ey0pfXP9tzl1xf/DkNhF+GByX1ECbJtC2OkON
	 QctjM8cZZVcJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6021BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174288738.28831.9091728338628976437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5266ae63e963aff9d577f529a015f16994c04db4f0115882dc36f791fd6c24
Date: Thu, 22 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671742887
