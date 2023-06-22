Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797EE17E0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 05:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC19EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 05:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687410788;
	bh=tSpsgP9uMlagd/iDtYaFA+lqSlQm0mF9Nmuta4z55kI=;
	h=To:Subject:From:Date:From;
	b=XvFqEiG3095rzZxBhjLAlbNVrBCeczW9zzduOJrUmEhosAhAnMIypGiln7nMQmSeD
	 wflhlR5WjmuOPrSY+a8LDowlQ3H2bDOspWh0L+U4sRp3YYgR+kLwH5kskGf5r4GUQD
	 wEUuq8IyFUrRpD78xC9kYIMRkEU6AfBFXrsZH8S2+wdXsFaI5jdd1zz5+MPSF7Fxhe
	 U+Bx1deo7G6dN/8HnNrKaG5VRDXREHNltiT2CZhqWX/FeFbE+rI4+WSwZFU5t0pHnX
	 XedIv2h5noJFeAtigkFk1uIAn19z6RYXLBRefhCrjlmzXgiwSe+fFh8LcO3J/cfUal
	 gtUMoe1KKZDfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD078EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 05:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168741078870.24939.18228390880006430406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3606db7bacfc51e598fda735d2d5bebb2844f183c365cd11c4646bb71c2a402
Date: Thu, 22 Jun 2023 05:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687410788
