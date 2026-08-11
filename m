Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588A24B0493
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786408834; cv=none; b=iGfPA1TIbwZIA91q7O114HIkaKpBxozRZ4H6/+jTkIgeSyfkEkyi9u+INE8rXG5gS2bdd9YphBNbCxJ+FwuSsP/5XEYgSvJbIbiXbwz6bUBW4apg+AGpZ54hJSDG5qn6sT8DtiK8JOazhkMuF1+wItuyCkII8NOW1NzZ7Tz+2mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786408834; c=relaxed/simple;
	bh=kt5pZgSss2v1U1RZvHj3CAv3wz+piH7sVThUUeO7P6M=;
	h=To:Subject:From:Message-Id:Date; b=WiLw+7CMuozklUiG9rBLFJGTXyex8Z4jOKkNl4vRZnPzdDKsgamGPzgpY38wHcMV5OIT0GkrNo7HPkpGRxpEdkjyBD0S90K5jzX5E97ZozurOcqmbyJVQqjDrPtbB18kBX5ph2YYjXvbN6KnnqOSiH9pPX9k+ftL+oVjxnBgwrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgrwU+1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgrwU+1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4E9C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786408833;
	bh=kt5pZgSss2v1U1RZvHj3CAv3wz+piH7sVThUUeO7P6M=;
	h=To:Subject:From:Date:From;
	b=dgrwU+1P+C47uEa/vO443NzZObElHM2gzKVkhaGlTPjzd+PS5XjfNg/6dTYkFrsVT
	 v1RmLgNgJ2/R6Yc8/tT6K5YXYl7K/uBo9sQEMARuEorwxePkCDTP16ieES9aO5KuQf
	 4YKpj+5oAZzyWyjeXP6zsheITpHQRwYflPxOBqrYFFKYir3Y4A6phWj55Wh3DPf+Uc
	 OsqGGLQFawECS0GoB6SCcNXAw6NB3lPbPViPShjrM+1KuLa20UmMRg/eZT6KWRWckd
	 KEhVQRf/UkADSJ8sbp7UsJHqTIJySF1EYA+BvHV3+OVBCvaIcbeAQcUy5sC+ys0cHV
	 PFoWtYc/vftKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ADFC5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640883368.25029.4485205213718500347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941e13e11e802da5acf0a19956312adb3043be318602a2d8131cc8237dc65bef
Date: Tue, 11 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786408833
