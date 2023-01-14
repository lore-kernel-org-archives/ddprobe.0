Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B347C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E756C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673678487;
	bh=HJU28DJ49lmgRB6sX+IIRbS/4FpHkc5lvBDPzk4edFc=;
	h=To:Subject:From:Date:From;
	b=hGNZt8cqdEDLY7DmlBUslZMYuCeNHN48fbOqq6ZQMka6rXeFmCyWKqKPRI824UK/i
	 AQLV/MwuxErUwfMB3Lu0bh9SJIChoA9afNNpXZuOD9+yFLBhEgKVe0/vqbrw1Qazlx
	 e0po3fK3HOB6y+ilbFxbv43MXJ1Un0I+whP8F8eXQK6CpGp2Qd9Y1Tw32YG+anPYYJ
	 wHNkQXc/d+nz74/WYQfWiyxZEEoxlMW99OrJmDjwWbKqf3QlOCgse3+vCj5w1BGzYK
	 tkGqnPCKHo/JDzKHkwxFHpUpTZUigsn1ykaD5Kp/EMAmw4ZTy9XVgfmH7kKeEh1M9n
	 DVK9LfMguT1hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D39C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367848738.1049.151609984498408479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d93f75f3e0ac6ac99ed91c10762a69b2832887e083559123bf9946c1954482b
Date: Sat, 14 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673678487
