Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86F823B1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 747DBC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669123254;
	bh=2sA0gXqFg0TKuBiWXymUk8yAd5qTxN88xDSM8i1CNUk=;
	h=To:Subject:From:Date:From;
	b=FOVftCUJvWtceJKB3hYvHNyITzDU3J6vJLzzJTXM/QVfdDs/OIpTd0dB/j09Axyog
	 wx/JLE/0zZiXyCWp2ZnaOXTj2W5QdIZh3zSuicEXB5dqoW34Sx6+v65Uf2M7bjyS0E
	 Z7DP0mi5D6x1ODp1/5LCxhWY5I1ehMrDDTaEP6phc0wlC6DJbsB0MnsAQ6tPraGq1I
	 PEmsBvdkCm4FDbAuU1YB3QFhksJX5ldVN/pIOK2GBTFfxZfE1lzuxbdq4UeWOZmSdz
	 mRiXrkp5Go2rk2FfcpE51mWNHi/urwxQl8u3ZIm1+5gwynFFJsA6m9itb/GoB5jXEt
	 wC873bwd5F12w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C25C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166912325435.29551.6275991024348080145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fcc6c07a47b53518ea3e444ce8d8ac3e6b11b0ff4c61ef0d47c144f708e307a
Date: Tue, 22 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669123254
