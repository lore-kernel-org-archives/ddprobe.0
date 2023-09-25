Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4426F13FED
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 09:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B66C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 09:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695635108;
	bh=bryAyotCsqHbjm/t9VdhhWBWbTuca6m5h+svX0OHRtM=;
	h=To:Subject:From:Date:From;
	b=cHGWP7XSRJQf1k8ONSdn2qm4rXQVit8+j5+TkZuD2G+IfHqiAFhBixqvQWs75WoUe
	 UYIpmY4RSMpaqEsfB6mplK8clDjrblFK48CkhIs8d2lLjEax9PwABRzhLh+IxrPKLC
	 pwzR+Q/IZifZRSepZcv2nVwX5f0yNg0jxomCbfnVtevnFLz1JuHsHaDfU0VI7e1UY4
	 aFFklvSPoj30o8ukcbDJaAMtQgIucNeiz/y0F5PZuHUhxVvIsdun3rhnGL1s3ARpI8
	 jh7YCOaptAtvp/vDLdk7+CCJIrKwy/AREwfARZVcz/kRGvK9zn+DzlxyajzQiV/JB8
	 vM05YeUYwtSDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7605CE7A89
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 09:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169563510867.20480.10239789560881127630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20f4825a3cc8bcb32e945ba82649ff0370d15a501e7165de4ea214c58e93090
Date: Mon, 25 Sep 2023 09:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695635108
