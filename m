Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DFF78C7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723908954; cv=none; b=gdMKlU4Vvu0Q3mLXxXfAayJQrliOwbKgDX8AHkMJ7Y4BLAmSMroo0JCQCc4J/nxK9d/Oy5Rqn9EZVwNxUnkUDn401pdd495X+Zt8Q0stc6b8OWdE8Ns7kDeVpyxIubQXtjF8g7iz+fBo9yrDFLur0LCewBtngDZL8Nnq8twdaXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723908954; c=relaxed/simple;
	bh=D2xGT79YqHJoPqfOhjj0o6xsixUuwPR/cnYt/ru0ZmE=;
	h=To:Subject:From:Message-Id:Date; b=qKdHrnqSz4Age5IAKO4kL899k7NIpMr+keuQnz05PuQqw1oMVEikUD8W2eayzCZpX0i4cEaC82GoNJZsVtr9/qWUcJI5VhxUMgW32an4G+aNt60uWpMQgfeecqxpmfZuza5l8chvO8kinZeo7CWaSj4eHG8aSU2udJqe15P2zgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaHwS8XX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaHwS8XX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E3BC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723908953;
	bh=D2xGT79YqHJoPqfOhjj0o6xsixUuwPR/cnYt/ru0ZmE=;
	h=To:Subject:From:Date:From;
	b=iaHwS8XXYskw83TgNGl/xfxm/SD78r+Z7XsB21NnvIXlR5THN67HEJxIpLDZic19S
	 YRu+1B4cSJk3nzKcKrC9gCv964kqqlPkeCiyHWEfeBKKd0M27qG/17ISKfRN8zp8Aa
	 hMbd/1cIwfGx4N1ALcLN39Dvl7I6/QunhLT9hQGSqvfFnKbuVnQHpjC4QhoeP4F8PY
	 vOeTHJIYS7CKAbscKd0qM7nTHiADLtCaKr4zYKfrFjUTWrzHr/OPr4U5yG0llcdbw0
	 lcEuJJHm9H7n1hTFqQ/Vz1x3uOEEJdRv3nKyF9t/9p23XiMY4BfnVv9p6ZxXq5h5MW
	 H89NACOJMZQMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A034C52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172390895359.28943.15188523152753685728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8cae43e6755858d404a8d0bdfb2fda54a49e8837b4257f529691a595b184d7
Date: Sat, 17 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723908953
