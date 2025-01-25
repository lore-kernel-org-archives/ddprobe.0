Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561471E480
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737795354; cv=none; b=RKtrlamJOfrw7eCtYXamezeAjX2UGMZ7N1qly9GaWqpsaLIxk2Bc5gS2yL9yhEV2Yc7i6DF32wVL1m3giQYnbV5XRNnMCKx0oa97ZA+XskmDLTUPlLJ0bd8FdumzOGgwZCETr7D5xvlbyGnxMxQncHUnDgZA4nyqLrwPBJeCvvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737795354; c=relaxed/simple;
	bh=YuQiSgk0psnP7Z8zs6WIy8jAi4wk/yyX2FLoizc9/e0=;
	h=To:Subject:From:Message-Id:Date; b=JYe/t7EyN2iTK++4yJwYM/csNTLSgcRT1zBnnRgTRIYn86W5dx6V4X3OebEhcicLrBBgtvjDAdtO+bVZHop0VvjqYmD2+k8VyjigoAxGDMccLYKE6YcKVKU/WR9F21E+rWwZa/XTTJ6LT0Mv4QNCLleQh9BXkyWBAWzxD70HkJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+ZJ8eC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+ZJ8eC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23BDC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737795353;
	bh=YuQiSgk0psnP7Z8zs6WIy8jAi4wk/yyX2FLoizc9/e0=;
	h=To:Subject:From:Date:From;
	b=L+ZJ8eC0EEJzYgjHvJpKh5Jw7nSYMNLVf/I6yMiNDoeeiIIIMnz127/WIqtvx6wL2
	 pSiOcDji8m+82ojEL1yJVTNzJvZbCJZlXMlhlP+p3gV6F2kG+HFuNS84PZL60RWt6m
	 3NrjnsplH/CLEFF9w6R73htlzBdqDQHWeYBt1rG1DNlZ6PDwBAvNOz1Oox8B8D6JTD
	 Wrs0+u3f0YTrLcK21ajN1Xey6KE6A1kOJ3lUK+sAQzsf65B1I7Qd4M2WAnt93uR3py
	 3ZaL/STTqScdc8py2FzQrEh5VW9zXnCGs1fJkqvJqMrs6GTsFMOr0ugYSxBfYyfP4z
	 n+DX5fT8YhGmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9100BC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779535357.10819.7000052509536386252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fee83332a5852cd6fc759646704f7488090c900882bef199ad44d1aacffe73
Date: Sat, 25 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737795353
