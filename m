Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D1A79FA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E670AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688831228;
	bh=BblrunGjtAZebNy/QhI30fvhIv8Yv82RmsJNRpzwyS0=;
	h=To:Subject:From:Date:From;
	b=JJh002p6GE2DOp2LzMR0ABaPhTX9ZB7LwDKIWeFMpxhJXjqWOsRY/cWN9+6Dj+HtS
	 2qev4SNdCWyWVUxbr/uS1hnzrPfleYb2QMLrzk85aBGET1192Bsr+mMIv2qNf7h8yT
	 4YOuXZY48+uZZdfWeyVdIQw2ZiII2HhPwNc90JMuGF/vDEFehWAcVbtEj8slxpFG9L
	 33uUTqYbaaR+V/YyfORBjiqd2EI39meoEnY8njXZR1bVBn291q4B7kCbjAn2wIpKzW
	 Jhtvb/P4906DK0WewORV2y9i0xkgBjUzBTKYbBYcL3Lsv/yQ+9I1/EbWQb2yt8I1AB
	 PVA9IoPEdBq7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6D9EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883122879.17832.14370137994849419729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed17e7ae95e0645a34c677d068fdcc2aea0ced498aa69b18e3ef46942a0c0a6
Date: Sat, 08 Jul 2023 15:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688831228
