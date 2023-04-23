Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D32620
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 03:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECC1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 03:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682218865;
	bh=bg/51+/Gb2yjb0GpJND2HvDlh7wMSAtZphldUTQY/Bo=;
	h=To:Subject:From:Date:From;
	b=dDKTlVGHH9Ay5aDo+mxOm8FzuLOLWnB2y2HvMFtQrFAQAXMRRrZsiQFDZEBYQkKf1
	 J1GdLJlyHyarbrpbkR0L910HPoSp+tXRF6GM+D7geWhX5yzYzaO2QZdsTi90TI7nXV
	 kGQzvULQe7peRjiFUOmWGfoJejdQUD5hC+V6iobU0zx70duq4B8qZOml7x7M5ZkWmN
	 10DerRFRJ+1xfhwCRy8Ssmykh8SrcL6w2sXt2ePppsZu5tPF6Wc+oMiQ/FjBxujvKO
	 Ax7REJKnz05XPGT4G6vVsSUBkgqwGDHTJvSaowOtLlLfoAUHEY85Q9RLuOaj05Ejma
	 RkyLIEgoFBZ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B15C77B76
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 03:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168221886578.20370.7745200745818825431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a73a0f26322ee101d77549e709fe97804837946b8772305e73e3e990ebde81
Date: Sun, 23 Apr 2023 03:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682218865
