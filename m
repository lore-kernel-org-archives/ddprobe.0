Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7A01C16
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82215C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670764887;
	bh=nYF6Wsfd6+ytFEch5XebiWrhafZh/yuqOGh+jDRsm+Q=;
	h=To:Subject:From:Date:From;
	b=I98lmOp9eiJ09Q9oiBVUPn5G1VSB7YPEE4laM1+k3Q8hudl810kV13cO8nh+GjiRI
	 6uVne6bLNQaNTr+9Ja17+f+iFJ10DKyDuHNCqK3vqqhfTHeHAKMmgJlSOfkSnKloxR
	 CpN92ruBvRZBMlAINs3eDluDNmkMhuxTWooIvvtiNuJqRa7eISV20X1MjoDGb5Q3rH
	 kVcS0WJ5F8JsZxlqwOgKpzvYf6+BEaOtNMG7t3FttFZc5FDAmFqVLIXKIclMTS+7iE
	 +/yCL/+ChUSwMuJmP1LnoafGWI+QSt26KOdEPC2AB4z+nTYwSZLJqlRXsJ3fMYyUEu
	 aLcBr7PqGE5Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 682DEC4167B
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076488741.19268.16256618969521643726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb2013519fd97c95e45a3c996d7843bac39dacff241b0eafa79d31b9e1049d0
Date: Sun, 11 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670764887
