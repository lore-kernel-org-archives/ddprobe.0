Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBF123814D
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757957995; cv=none; b=XoJ1fWav2idYjn20TmPUJM2JEQvG+DAcBzucNdBxNwjWhkbQcLgNRfdMmB8oFlXoTgsoYGNfQEFVTr1lbmak6mT8wSUbIajI7iItbLFEoheYAVFty3mdb4OSyO6Nt2tsvToQ5LiVog5l2PWFz4DvRLdj9JIkLYZsXM/bJDdPdPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757957995; c=relaxed/simple;
	bh=Z3H3F++f7Z05uhAqGtT5ldrTUFcGK9cMbszGgbAFWS4=;
	h=To:Subject:From:Message-Id:Date; b=A7UODASjlToxunj1T5C5ofNeFe1smhe8QlV74MnpIJaEDXWWCMb2cba7gs5JmWBe6nKAuQ9WIFcEMt05Qz7jsonUDEDky50BfjrEp8B3JxpNthH4bX/bGIMWWz7edND8bY7yNuUX+Ow9dz9zjID95Lm6/iSaXnmfeUjx9tKQ1A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/TvabMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/TvabMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6121C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757957993;
	bh=Z3H3F++f7Z05uhAqGtT5ldrTUFcGK9cMbszGgbAFWS4=;
	h=To:Subject:From:Date:From;
	b=a/TvabMe3ClOrGVkuOBM19iAQSEbBWjYLV/z+HRLgMdc1dfPWMmXUd7VN+oQ/1oaC
	 DGqBKAXqJg2sHXxoWjIqOePKYKUwNOw3EXx98RC7Fs2sEHedwDD5UxOxvF3qD6VgIM
	 e53Ncw6k6vjo7ISn7Cp1rSMho6eacq8NnjxlzrJhRyRLyjcaxUY3VVBEQ7fcvyPSDG
	 r0sqFgNwF/34vzJ8CCPKBrO8VBlzTf3CsqUgIvfQVJ9+I5/hIxYsqzqHpcvuAVYXSE
	 LvSyOzAMxjv4hJsiX3S+PNH9jSECazb/+K0nimCOVVuoCrnPncFNRxWZwmSffXAbJv
	 3shfOrEkiG/7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9483DCAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795799357.2708.9698155045664918964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fd819639707526c0bcd7dd143f769650f5016f31342ee2d9ce485bbfd91937
Date: Mon, 15 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757957993
