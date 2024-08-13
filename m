Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA6037E
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723572354; cv=none; b=g3JNtwRo3AV4fcQ3b24aR61nH2qWoTCE8uVHW9quxOd5eUlwFkCuuziuwqJ4SoNp1mgxV69MjAtHCZlooCmYkFNKv1MiTsdKoO6EVXhEhKqvdhTU8Igd91f1HIkS8M7S3zTJf/xwoyQlaq5iTaV0Mmld1FC+uAZ1KuXZK30LVcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723572354; c=relaxed/simple;
	bh=DwT5/rlGvgHxeN4crUFbvLEEQhuxb+lWWxVgNGMkcZQ=;
	h=To:Subject:From:Message-Id:Date; b=s7zAPLkhlehlC2+kLzXqkSZXO/CpnyNnN1y0sA7QjG43OWBgfplHuY1De5MsqoMbly0E8ivlHZ6yX3IHw+pIq+bhkXQo9oGiEupbemyz/qcdgBiCdWHmqSJN4bqKbU1gmsQaI0U/1U8dUvbhYxX6pUGXCGuEZ7uGrLAr6icHw1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Er4w12aO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Er4w12aO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89E8C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723572353;
	bh=DwT5/rlGvgHxeN4crUFbvLEEQhuxb+lWWxVgNGMkcZQ=;
	h=To:Subject:From:Date:From;
	b=Er4w12aOPyZ9Ekn/jNJVOxxOm7jrSAkiiOkTrf0BETO0cX3+m/Yt1C+DM6Nz0fQI8
	 YG9I0gb2eauA8S0xdyKGaj9YcfQAUSiywPZridSIUiTjTpV+Xs6QOfoxNj0ZXSKelU
	 Gw82eWrwlABX4Q4wmTjuCLbopAqd5Qda4fFP/mlYARmOHQgyFQ7A+BlM6QTZsiyHTm
	 F8ivT5TDFY9ebLSGAgf8uQ1D5myOKxF2g/J10rU3/tu83Ys1X+0tXaGoPNO5BTe4E8
	 bkyXzCfM7XZBNFh7HDAw65l9RN4aGgqhoLqxpINiJHTcWeUibvUvTu5nRyWtwCPavW
	 Qfqmz9KYtTTGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF38C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172357235364.24075.18138894441740316494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082aa6e452c440f0894ea9a3d395405d7daf836ea56a9da82cc681929871dc2b
Date: Tue, 13 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723572353
