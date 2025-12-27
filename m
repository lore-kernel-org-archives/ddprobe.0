Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4796B3A1E96
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766806434; cv=none; b=nu5oUCjoPVEQRdjqOFdozZqQQ3YOCl+plRBD/Ffitv6LvPyGVKEt8KcA5AZYmGk2IqLyhSMNwiZ1bvN/ByBL7orQfwS9BNGD9HNvNsDfb23+Y26acTM4DhWjakLcePAgAqq7f66c5hF+IOhEQn/oVBJ4Fbwkt6xhkiB063syUno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766806434; c=relaxed/simple;
	bh=Ry+Ox2RORd1on1CGFi4lKPmTJI9ejhotQGlf+5BKhR4=;
	h=To:Subject:From:Message-Id:Date; b=KuA2bqeT41dRzAC1DfdgYIGmUaqxbL51U0cY+RoP+kiNs3TYqtHNOk4YL/tLZ4H1vt0SoY8EovNj0qq6pJphIgzJf+MPqhbyrnIC9O1VrEZxqpGPsE+95vxe8BClt3lDcnvG6PzCl6KoYxqJ26raPTpZg9om/GF/dyP4z+UUIBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CW2Pczfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CW2Pczfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B3AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766806433;
	bh=Ry+Ox2RORd1on1CGFi4lKPmTJI9ejhotQGlf+5BKhR4=;
	h=To:Subject:From:Date:From;
	b=CW2PczfrG5FGN+xDkQN+koPoqhKmfK4FniEPS4NOlpGBaaj9gCJikupGDB+DbWOi5
	 zRgjKThyqVZ2yJvSkEHdVH6AEIIjLgh/f6kRgZrtTwaE9dWEFhLlRzDYfVzk1ZAUJE
	 tFTb7WI2J4WBVU88F/AzQWK0B4SZVnHqO/UBI3zykI/wdFKpr5PSOQw4Br96JuPQ96
	 YEVYmM2LPuNbNBnAqF1RKel8oofREoNV3GYO4NR6+bKpHdgqoflJtw+XL0SIxMdGys
	 uc7iqy8UyZdHM3a6Th8F46vnUj656e7OAccd8UneXSgXYD2fBAtPcecZb6hRxAcY/9
	 RZO9/vi+TTHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA10E6B279
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680643361.3504.2342001248539944097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483b3179cd554ec84332432c688ee47dd1443d823734e9d8739f877b17a35b67
Date: Sat, 27 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766806433
