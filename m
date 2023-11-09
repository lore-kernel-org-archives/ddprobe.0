Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F26361
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpcmfSZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CE71C433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699490896;
	bh=aqIysHM+STI6lUMwihYN8z+DUsh6LJUNH3fM4z1Np9o=;
	h=To:Subject:From:Date:From;
	b=UpcmfSZX57VGflUmQ6BDtu+fjTY5UXDM6GRRtJdnGGkwDU46LHu7YWw1293+FeKQY
	 pfGQVNxyVXamT4TfaBiAec6zP86QRTy0UDveSc6SY/RUG/kYUSENEgqCMAI6ak6jeM
	 4ylCQijjKuMFqpqe4rb3F5mdAYS+rOcqZTeek6oZq7THsxXG1d9aVL6j4UAREIbVpe
	 QBQ44BJQPxv4VIVy2aOru5HFFz1147HHBI/vuaUhl80XccXxAyVOGYaAHo+SLcz9Ip
	 VZzBLZ/076B/pJOoUHKB6nRQLMJHWSyF2ymATDa8Ov04UGgiybr0wCoMO2JeyHp0PW
	 +tw35sQLVybrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75643C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169949089645.14803.7533577852853577665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a4805e31f7167b8342b36dd45ef380a16fe7a1b544fa910a961560ed60196e
Date: Thu, 09 Nov 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699490896
