Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493BB4432F3
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784111914; cv=none; b=o1j62vKNY3ab/s/zF1mBt2Q2E5rF0uFmJydnO1iOaWPkxX21txAO9FMaIw/y8T4YDSKlTEQRGWRXlHdylforuvluqVqXGKD8IQTxFpvaj+ac4racOCNxkJGDmrwC8sBUnTTQEd9VEoWMlT3B4DpUNw9mR8ZFhsiLi8xI3owTu3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784111914; c=relaxed/simple;
	bh=8Gd3L876LzahOXGD7n6C9JF/CQJdqHvKaEET8NkdmnU=;
	h=To:Subject:From:Message-Id:Date; b=t2VywD5v/ByqdyepcqQMUon9LlFBH4Ek+tFhCQsc0mvXeXWtjbXmnyOK8Mw77Q58v3bC6kAM3z6rEccB0yFX/21QMLXV9U/2GbOXFgYfra402UZmViuuBl8Lze/EHHoNIL2jKp3m95mpkaTuJQfEeyzgjnmd8x3NF5vUfqPHIgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFGL5MO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFGL5MO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BACC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784111913;
	bh=8Gd3L876LzahOXGD7n6C9JF/CQJdqHvKaEET8NkdmnU=;
	h=To:Subject:From:Date:From;
	b=HFGL5MO96E0N81QnI3UHsjd/KDvD/vtefp33MGIrwHRfEztOsyYnETfWsBTwPRGwJ
	 6mkwJuf0/jN3Hq20hMyXrYgdUhgyI/ufMyBGOTJyIkm77XJXbtqJtOUbuYhXk1aTja
	 0Ybf7qovcjPglhOJ8u2o3L6iIbX2f07+KpYLn+NAGyDYeUOTLinZLev/UuKq7dEHwf
	 H29agddO752e+hXoSbyQInmrmrYc25AiNRNQKKV7QgS8WSyOL95+oGT2EcWvPx0Ebg
	 0iJtKjq7IBtYUXYoiaz8yoWlci8yeKlI0mMfMuoJFJHx5NLGfcn+HeP6kmnTm2RpEi
	 pl68wkv+uNabw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8507C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411191368.14793.17631533354942834199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795b80edaaac9a38dcf15f93236d08ccbd854c48569f20fb6ba0c32484ff1515
Date: Wed, 15 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784111913
