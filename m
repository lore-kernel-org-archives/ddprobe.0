Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE6025A324
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760876994; cv=none; b=hmpoAgtxUesNLJA7tPw6W7s4ctnr+B+r3DG/1qXnaAgLuEAxgyoZEmuq8+1bcsVZ9P+YtjsH2XdYBQfl5CbM1VPjB9LCsQN7u/mxuI+Kml7cjNZ9h1faL+GVqzUrxihFYtue1orXcZcIyRDk47zorst08JT8tnqEGTFn08rziVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760876994; c=relaxed/simple;
	bh=FnWQdTprR8AQpxY7isTuqwf0VaUyo4IsBqcmxHjOA1I=;
	h=To:Subject:From:Message-Id:Date; b=I5Naekt52UpEY5K2yybYTSaoWpXnNitx9NK0ay4UCWfJ3ssT7Zw0nZUecw8c6m3KTNX/lNAod8sdB4U8ttllpT8F2UyG1OlBKFvYyMUOcpWZ85NPoA0KeKPVlW/mSWL07X4QB4AB3xg68h8Uk7a1KioTghamSuYrK6GcBvgXcZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blYFegw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blYFegw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A746CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760876993;
	bh=FnWQdTprR8AQpxY7isTuqwf0VaUyo4IsBqcmxHjOA1I=;
	h=To:Subject:From:Date:From;
	b=blYFegw0MVB/fYUN+YCgfLAC4iJxQAGNngF48L7fN2nfnPKxYAIkim2CWuv3mRw5V
	 SpKICmUX8ExTJqQzYQz3x7nEZP57ZrvSdRQc4Kl2sMS4l/nGYHNaIuN7GWq3eH+1mi
	 EffjMiCJXN+mqEZWsTFDn+Qq3Y4nP1fnC2HcxJ84c+Em1PUkT1Mjk6VCd7mbVx2siZ
	 rMyHxqbek4glzkxjC9tQuqupPXVqHFvMacEOlc/I1yQICuOSRWykR8RXbrtmJv8Hmu
	 U1FxzzCWonlFr4Td5UbsYw1sEbnSRO6C/uYBYjlKEsrx/0YlN4qxlctDliSKxiTLXX
	 tOi9++va/Nl7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95786CCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087699358.13806.3630366911800412803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679a890f28011e1f370f48c07a345cc3904043482edbc9a2f11bbae99f37138b
Date: Sun, 19 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760876993
