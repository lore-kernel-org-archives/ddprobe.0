Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499CA5669
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 17:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEAE3C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 17:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678900806;
	bh=vSF4SRSil7WA0yzOFJPK4ESCUK/eCCU7q/eZUPKTkN8=;
	h=To:Subject:From:Date:From;
	b=RzWm+wSxFejREbUHJz1kr4GZoVHpydw2MjExW8ZFWXv3Fzib7Ef0jTb3003aWRXT3
	 wbtTOspN+G7NCNZUm5Y3W83tLSZ2iNi8O0IxB753/YRRZ7I76dw6ztwiJJOTIt4lnV
	 OZUKDaI+9HnXTbPkzjA0sKDC97X7BTBH7E53tX4Nj4EVNeVaQ+6bg8X5ihAbZXe2Tl
	 v4kjKzlqQFAsPNeuMmjwKGBE+CMD6iEJhz7UoUJI74BZ2Jylq+oGoyPjFwfP3RQnRu
	 kpM77zCK9OPN8bYyJXxNPsW/JDmYVuCjsa+B0GrZQknNGmjmd1tugPgnOtZR7UN1S7
	 ARyhHX1YEXgrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A73C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 17:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167890080578.28183.55749451279583062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d575d3f44d73b2b331814a258e53d586cef9325e0be5f99441e6003f6380305b
Date: Wed, 15 Mar 2023 17:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678900805
