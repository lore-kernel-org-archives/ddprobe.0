Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E046A3C34
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E94FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672519887;
	bh=Luvoq+bdgA5Vp0cOvo4yltU2DCThd+2Bq4ukpfVLZr0=;
	h=To:Subject:From:Date:From;
	b=dEJA4+kb3NSJrzn9aHU7Zkn2wDWvQaq/rf1w4NwicKjewKlq5FG3YjVpNRIg1l7kg
	 wayKfQyEkNVCsbcKtGP7td40xTrdwvfAhimNU6BJRJedkrnTP9hMfYR7I/qp4ItkiK
	 73HIziXQEP5GNQNUAkSPt2T+sRXPvbxUQhiFsu+7hfXGW334GxsUQUwErsPYsQnc0O
	 u9HF7EYKpcvhdf0PKgxxBB6vKkg4Oq8HhdAS5FQi4S/2CPoL/wMA2AHRsHmztZWE4w
	 vk2BymW2JQRMBq4sY4Ri0fJAXttSuYnXB0sqyjypki5TX8CeuNLjF2UgQ7fGUn5sEc
	 XUmk65kM2hOBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EE5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251988737.7534.3778376663181247478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a1446b9ada6b303026de0fc197b0d0e9f76b09c6f38bcd73130db9143f89f2
Date: Sat, 31 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672519887
