Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95E47E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 862B5C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671386487;
	bh=Pb6UFGVYn2GFV/oikXFzK58LH6e+r36GROi+USILn1I=;
	h=To:Subject:From:Date:From;
	b=pNt23TrzTdxpQO42MvHFpnA6ZQaBA5QfgfdwX9N38csE1IS0EUNcHy8MiS3Ma3bjv
	 74G8OCAFSmpYFEgi+QGk6nB+smaTbZI56sUpjtJPYa9mwwuX9YrIe2zNbbGLE5/FtM
	 O3BS2ib3ITkFAEUTgpcUmyqr+Wvp7xZhDrWM5FSLmLYtKkNb0zhyj7bBgYK1GzYAGm
	 SSiUEF4KNcR4Im+/w5pzYE3B2S4R3Rv1mpKnrHwGhme6/Ks8Q40+iUwBQkzHqq8QAF
	 d+xyhetBYy6L3vikcRKmEwa23F3groVZ0GLvwmW1emOCQCOs1AYbhxNkVFTbuyV4Oq
	 ERrWgcspm8l+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B1EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138648739.14638.16485971010037012403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5183ad2d58205193a2f174f5319acf081ec2b613e2fc766d02e3ec35f134bbb9
Date: Sun, 18 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671386487
