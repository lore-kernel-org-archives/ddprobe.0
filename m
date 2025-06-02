Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBA3145A03
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748858993; cv=none; b=prEYl7IqxlcsCyBKWwqknxi7dlsugBQ5U8Uf206FuI+/p6cr8gm02LyJdBurovw86O3jkf4q4J4uAN8p2S6BC2lQ4K5CQoyeUfCT+GGz4QQk3ORXbaRMXnsLi1XjI+WZB0tgmqoWps2FXwJnZkxpuvLsoIkRr6d9zvFdNtD7WzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748858993; c=relaxed/simple;
	bh=x7aiGjXnEilxHE7cNa0+YdCdMnE5gwjkklaRLS8fy2A=;
	h=To:Subject:From:Message-Id:Date; b=QmmH1kwFvTXcAROgAAmW8s8Z9gjRzIZqn3ZXONmsUAuwBrE1Y5SV1dHUosiVnLNHdHjRl7fT9LKdabLD2VeQ7d9EA3Wkh1cLdW3SCx9Hns/rW3nTEsKNUcmz+M6PStF5yTbX/aYWVcwX6GlhsTNtLlCsP7uRfRE6ZlX7dbX4Ym0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5LHyG1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5LHyG1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB046C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748858993;
	bh=x7aiGjXnEilxHE7cNa0+YdCdMnE5gwjkklaRLS8fy2A=;
	h=To:Subject:From:Date:From;
	b=E5LHyG1gUtW+aXWUQ972Z9ocM1c1o0DSoK33dUjGSSmkowQEoa3ttLUaZqCOrbK0U
	 e3OShtyVomu9GfsPPn9kFJlxAkZmBZlliTu/eNAZIZO2kHhOkY5e8xL2b5wKJSZ6hy
	 gW5B67DqiPGGBqGAnEXBYa3jJoFZm0GeEFt5DEYierLZKv+q5d6cWNVVRs1HQNWNz8
	 bPbRGcqVElhuDKibfkSdzJ4HFIs7uXIxz8SdM6/KR6E+GAXIMQDBbyvw4CKYAgh4Tw
	 ebhEHIPnH3dTu64ihjKaBmVRVIgxL0sZKuVrRV6rBC0b7tg4HpG0jUo3xT65zHzboI
	 MJt6weOuPkXBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9774CC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885899359.8269.4973816722387537188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69b26ca686857db3c697bd1a6675ab5a8362e1ee070a464ca53be57289a36e2
Date: Mon, 02 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748858993
