Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED00D1F92D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:19:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AAAC433C9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686946748;
	bh=zE3ooS47mpub6lY6L+yzmoj4Hbkz2h3E+6HPjXNJ0tc=;
	h=To:Subject:From:Date:From;
	b=nbjzK8N+cy/QQVkAgBonMJ1cFGMUwXfijY1rpV06Cs1zb/WhM4WJyfE/9EYmzyB/4
	 Tbz82+jc3QuPdXf7g/rmS3b64fnclC8g5+zhuQLIH+S7fmGfSpzdes0KN0pwzUpXBF
	 bI7FJTIZEhrqibWpjPkVNenAPXFKkyGGnYTNwCzzaYDkN3Uv/TYoZK7XCb2rd3ScrC
	 +plpkoFpZ0z1dWSd2sHb1hZRx0UwLVTqyIGblr0XT2Sxg4mAABYqjpk49UxDP2e4Tl
	 4YxCJP088JHJMDGAcL15m9SNzBkfFsk1cHWG3Y7UWF2zgYDWe8RdfPF4DZncee97rz
	 VggYgb6K3N4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0E2C001B1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168694674869.20113.2330127351980351495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: defc05ba734102fa44bbaa7029649bbf047302577750b7d05bed92805a916506
Date: Fri, 16 Jun 2023 20:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686946748
