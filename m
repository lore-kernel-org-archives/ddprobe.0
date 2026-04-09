Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B20A2D8DD0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775772454; cv=none; b=kdI25rp25F70EgzzBKQ3udaCwY1YwECuR2hU6dwBQrJl/8bakY2PEoXEX8Sh64lEHb5mhlw5V5ef7TIsFc26wRZxN+TuudMDDEGIqOX1qksrWmlRl0dqpcex0WMxOseLmJX07qp8k3jWhTI+zw8EjQlTDsiZu6rZNko3rzQdWzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775772454; c=relaxed/simple;
	bh=JpInT3wl95XTTZOlFv0ztu5JNuqkHRY5gALhCd4rdHE=;
	h=To:Subject:From:Message-Id:Date; b=B/wEFN2/VZZIgopDlzVIv/jz2/ZuaeKAdHVWR+v221prZSfXHMnm5oGc4Nj+LmOeYPpZgxSJkXxziTyPdj7iBeKD6wbJ2yE5C0sFshsmeEn8UehqFTe0t7BIosWTLE/ktAQlneVUmNkEgu/G6tIhH68G+93RIRMqjsguUpMKyRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDO3C2c8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDO3C2c8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3CCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775772453;
	bh=JpInT3wl95XTTZOlFv0ztu5JNuqkHRY5gALhCd4rdHE=;
	h=To:Subject:From:Date:From;
	b=JDO3C2c8PQOJswtzNggQ8zFpNoj0ye0X8bWsfVWJ0IzRg5ffVGchgYl0qIMGtA6Zb
	 S+bojId54C+eZNFqhNmI5+2MPfufBUG7Xv+a5IYtEK9fCpjUMk5bUp9XOaA6gXauly
	 8WPbnY9Tb9sjw420kRYl8jORYL7FeM3HWR323sxPDFWtGHETR7SnRBsnSop+piXWgu
	 NyuOmwGt5KjueWex5Ky/gpUTGv4M929lCdKFWxTjR5m91W2vzQiKzQZphHzByutruM
	 i3bCJ/H572n9kYvNy8Mm6pcTY107RV2epnYF7oAi3mKKoMjBpai3UhNlf+HYZgZcy3
	 ahVkEJuqV/dNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8BFF364C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577245369.23604.8546079362455183850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ac4e83e56a97956dd082b8529f675079dcc8e0c9342bf75511a6277dbd61df
Date: Thu, 09 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775772453
