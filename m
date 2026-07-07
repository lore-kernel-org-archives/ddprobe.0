Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437E6434E3A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783441114; cv=none; b=JYv5tlamBlV6EpXfBp667n8hipC/krKRoSxrmBgpaBHsznngJR0zZi2LAXZxWGIFrNVGAnpVuLDokUoBrL3BUMEc8BW/TNtc/JGSZWo6ZWI3RzpYPYP+ZyVcEgod6c9AMu7fVxse5tEmlYPjPUsfKB/ybn9ZOrW+nDegxNyc/WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783441114; c=relaxed/simple;
	bh=oLEa9fE1XTyAAU8NpUEPioZNqSfOtlYkoOlHZeNNOX4=;
	h=To:Subject:From:Message-Id:Date; b=Vh8boVwzmnJWHuFF/8EbgOQ+NJdJGSDvU/GHSff3i1fxjrwkkLUvdV2tEKwovmMxc3aCHJzuKKGjU+xfQtIX7a0eJe6H0chdNvDNh/Zq8tn9E7SlXEtS+fh65+uLtRybJsmU0kBA3k+SjzScq5Id7PBx6ddu8HzXB0GMPBm8sfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcKvZh0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcKvZh0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8110C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783441113;
	bh=oLEa9fE1XTyAAU8NpUEPioZNqSfOtlYkoOlHZeNNOX4=;
	h=To:Subject:From:Date:From;
	b=WcKvZh0pGe5VXh4ddypFb5WC35RN2W5CDIMrk3eOKPRWdOO2ToUi4KfrPD3k5jBAz
	 HTbGd/G55ypd9Ftymqrxl5whzxOjwgkA8jL1k2ubY2ASlW+7H+hWdhIMGE3GGUCDJO
	 lI5ssmEOrYfJdJfv7OTGDi6byTWi5osYKZSoZdiB+57NJWQ0qzwfZALNRlylpKkwji
	 Q6iwPI+CLC3sZnFQGfNHtXo2Q3Qf5Mx0/YwP64QoGjRWa6O5/Hf7EWoKBTK1d4aqiF
	 xbXpiszdoXX0rmyKRwu5dj61eGQVCkwSK/SaetULo+j+18tQSJU10CsbgH7vN/gswd
	 UD696ULcG+cdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D6C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344111368.28414.4248509995612376647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea559fb52a17f8d0905fe5d7ceae18dd044f61ef3d18967e053073ffdfb5accb
Date: Tue, 07 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783441113
