Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD265692
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D194C433F0
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671125487;
	bh=Yq40M+O9QvnWsGrsGuqNaSqO42LOVoaTCkkxIaJCx7Y=;
	h=To:Subject:From:Date:From;
	b=lVXDpnpbr6o4GMmSDPy9RaUC3EOvV9xfKs6PUtCCIsEBWou3KFpuWDdqrKXkuEY4B
	 22U+aNsPhDN5l4VPX+53dTd7Uq2YGhvTmVKgRtmHr8TfMQnSZyiUcCMhP+jRdnaSrd
	 VTwxk8pw9pQIGyb/mS4ZU7ImcwRDQMAvfd8fwXxlJXlfukJXJ7X+0OIxxsaS1nM11k
	 UzAtBcqoqKoYIACCvBaFXMNOwJL2jjVnoxylrkUV0f36BY3x71KXjg+YpXpJ0Q3rmO
	 69V1xzNLxlhFLzd7H8tGhfM6XmY1JI+Cf55YUzKpKw0K7gtyRS4iAp1VNZaskSnTYi
	 i33t6Mzny1zag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65275C4167B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112548740.12083.9433981724553914946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0ba32aeae9c4fa322bbfcccbc1df979c3758b310c7aa3409dc2b2fa93d2284
Date: Thu, 15 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671125487
