Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D627C7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CFA5C433F0
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670983287;
	bh=poYomWne9qegnHKlo6NbsbS8xAvwjnRXAMi6sJj2EQ0=;
	h=To:Subject:From:Date:From;
	b=GyulAWybD69pa6zewzjR786kSPZK7IV0+HJe+AwMJ8+jdc7VoqEx+zXemGn24nil1
	 uBdJBul5OEWwY0Xr90CFnfRdd7mcWE7OtJrSIjlDQxYW5Sqj7aINgMFl893kliAhDG
	 Ceg+zf/vMjOTz/iu5xqEGpvL26cpQGUNuU6WQDuKCPgb8q10twUSmsEgdqhSCXLEnT
	 DYlatwQuBZ48n+gQmWQZ6tn1HclBtyrRrBBSetUu/WKewCy1kq2P1gkPppi7BdQqBc
	 o4RoaeX/cRP5kUkiqdU+K19srhfSaFL/rZfzmDwr1YneIlOiJL4++rTeWilfAeqOLU
	 pFH5tpGqy4CFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6039CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098328738.2541.11300284963859220753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbbb0c892cff95b5c6b81d12c27f12f5236a2d0da6704a7e925df89113947ba6
Date: Wed, 14 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670983287
