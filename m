Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDB5171DE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 18:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40E2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 18:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686940748;
	bh=ieAQx4Q364jLzVa8uMM1JUHLfYGcXE9MkoaHI//vktg=;
	h=To:Subject:From:Date:From;
	b=cs0Q714/25/Np5Jtj8JtICN2fclrYphuzBdqM2su0FDbP+NjH9+fb0luZLkiGUrGi
	 hP5MTy3KS0/+S4VaCF5owdAd9n19IdeLLj4ziZ6zey3lCn5ztEhTkkCgpfu6pmo2AW
	 elbV26ut56CVujot1mc7dgKjTJji3S0e7BKw1aNC80FNvq0ywkr5HtZVl63B/5RYx+
	 Q4LAKguFJxtmfT1NPDxkFloj7MAjrmBuDuM/UJcpLSvMV9snvV0JuujcpQWBpzukan
	 AzDYcE8W22F2VwV90K/kwc1lzsUmzO6mVnp3o/SMl5N0z1dZqioeTDRJmZ+e4Clx9P
	 rittVEApH5Wnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35BCEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 18:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168694074872.26518.16735073999596721968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96dbf2145d050f1d8a01a1fbb797a23ea2749ba38d21d13db7ed3dd852ca1fe
Date: Fri, 16 Jun 2023 18:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686940748
