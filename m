Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3D6EBE
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729455354; cv=none; b=n972fQJd5TdhoQ3AyAJEkBFwVj6q7otxxgbx+T7xx3BhEcFi3TpzuJEkWXSkbTIW029P6khItyuv5rQ+hHQfScfY2YEYJ43fFWLb9YQ3QWE/jevZpRKAeW2HpY17gWOrG3pWnJEfEhZmW2p5UA4/Fq+Il/blsk7rD353ai+B0lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729455354; c=relaxed/simple;
	bh=xeUsqNL1PrL79LXXVKznjR/P/Go1LkaOgptfDam9gxQ=;
	h=To:Subject:From:Message-Id:Date; b=asEKFtZDXHy9brARhZna6OvKwcTXdbCKgD8fOW8+mBla76JY4/zQKG3+vAL1TY3dlN0m7R7rPUjbSULtgIlKydUnLZ2bkcslrA7FQuLWJwIEXbhZQSQAyjH97bthmtPk4TbA7SfX4RVutFtVzs1iSpnMPY/5yqqGQh4ynliiNGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUkuO/n7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUkuO/n7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8161C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729455353;
	bh=xeUsqNL1PrL79LXXVKznjR/P/Go1LkaOgptfDam9gxQ=;
	h=To:Subject:From:Date:From;
	b=fUkuO/n7h2HpqqimaiLH9OG0PCxfyx65uq/dj0pH3ZP1xGKV0Dpl8lcb6GzIozQrV
	 GZN603NMZ3vCwqz5YoV0WxzEAwrhJfb8WVmXmH6BmoQAUhfkyKfLkUp3/1eMAkBGbO
	 gF1HrrRCpHMilUvHKcr8SpV9r/a6hEL8dULYH5iTSEWqbGGXHVGg1PLRhvydvzkpxO
	 9rQq5tD/KtZiEE1PZhGKQXz7lPbeHgSZO4zu2x7/BojoUKXFFTUlE9jVUwNPxNkXMG
	 fpHNZq95H99MN8KA5zyNcr5suhZE/6ro4T98IAecCmKm9O/UdLn3Hoo2MFqWek82hR
	 ckplbs2UrAEzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D7D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172945535358.1371.2830096469198063306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a10818da721db89521c799a322d30bc682ed654ea8020084110e1394874ede
Date: Sun, 20 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729455353
