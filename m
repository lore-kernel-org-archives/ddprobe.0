Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE0A620
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 03:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A72C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 03:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682220665;
	bh=0XRyodTcE4/5syPow16Ft0/mCfgm0JI84MBAurEJOAY=;
	h=To:Subject:From:Date:From;
	b=GSwR4CNICl6ZlsbiclMMMhvytVW9dxoZFPgP80NeLAfQyM3ZRq2B9SVhONc0YlXFm
	 JRIqQ5hGmQUjdOyAe5D/AEspSPYPqAkUdeYFqb+STSc+zJcGkHsiuT8znRkBsTh7PO
	 jyPz5qDfM9j2V+BnHnprFFbL4f5lRo3oUZ6Rv/IJoi4l2nbO7LgHBmlwJZK81f6piO
	 lOr4N4l0i74ZZyKQpic+9jkrmn/E9P9kYRZllx6oGa3y0hFHvJkkviIiI0txgtLl+w
	 nkkF+6mNe94E7VqrCscfrM5/J7T7MMXlY2degBbGASL07HEJUhwWobRUM/gX3WfXG3
	 2n6v/GtQxdzJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C850CC77B76
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 03:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168222066579.29526.15864127150475938530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0557829bc72d7ebd891e5f2b1fd7807d38925d20d00dbf11aeb3b54ed4cf68db
Date: Sun, 23 Apr 2023 03:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682220665
