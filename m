Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DBA7460
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILVgglNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8347BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699684696;
	bh=JWkT8kPLvg/3rr5cnaAbABH9X1tsvt7dl9etUiONvZw=;
	h=To:Subject:From:Date:From;
	b=ILVgglNh90pn+XIyXYDbSGdHdEV7gfySpRwudHucIrL7rzQD4W82oDH1D1Vf9dTX6
	 5uV9/4jp3LL1TGzfZbtEdG061zpoA+Qko9XgZMDHtu+WtyhTbdNk/TBXZ+PANhx+4L
	 sk2cbzN2Bst/2Sdy7ckUBeKKN9tZBTbsW78eS5em9rE0lk5XFunjXbnbxG6QSR6Mnl
	 H/Sj597913C1dTm6kbtwBBfzy4viyDNTVpQuqrfVEr/nrgUr/XYBZustD3TaEl7QpM
	 XrBI3Ni39GDcXT8rI32/ToTbuVdWVVDkB5yCJuzOgzm6qOib3rqhd//DQZpLkgXdmA
	 J0MP3xJoIuEbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63238C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169968469639.3821.17026876377610730104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0acbadf82dbcd298faaae7c4343da1f5459ef43b18ce886dc947d50ab85420d
Date: Sat, 11 Nov 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699684696
