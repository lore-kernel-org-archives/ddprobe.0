Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00212F3C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7294AC433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667604654;
	bh=to+e7f8iabYhBNcogMNGlIcqZhtAHlnj+XiZPSz66Bw=;
	h=To:Subject:From:Date:From;
	b=DsP6OVWP9Td3m7tFV7ciPcOe8xdQcka049Bd7zvtHyXwUa7EYQJ4YwM+wnTsNE308
	 cI/kmhAjCOzlFMkffcXlQxvxTIVfPk4acb8+FYJTbPkEIl6XB05HEkUv4Fg78CnwE/
	 FcPzrnyiTGXr66stqk5FQYT/4Rwi3APsgusa3/Q+5Y51kOHl634cqZb1c5fw/2f5x2
	 HI+pHFYSjIAyhj5yV0yjAr2iDN8/jJi/StrvokEZWuPE4kwgswwOt6QfOvTcbgyQj0
	 nvriv2LVFmsd5rBbGc7DVsL1XI2jh5kSFoIeaV+chunIXQKR6GstZg2Q6Ny3xrhQu8
	 i2+0TU44MXwkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56628C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760465434.27258.9736835332268695629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b5f9d9399bee79c74e635f24cf7354bb6b621eb0aef3171631c72c245b14c8
Date: Fri, 04 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667604654
