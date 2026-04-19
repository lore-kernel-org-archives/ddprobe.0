Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF5928000F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776591454; cv=none; b=FkJ+VIplZgZ8bGf+TjN1OPhxtMNb5mTpwDjTECBOk3Gm9DPz/WzTgQ/k8YF75nAohPjqLVR+CC2lpwln5ETVSSTjIZ+plJpzjoEv14EIEh5E9/HfQ7zTz74qLfiV9jLXj8zOcTo+/LIPrXsA9rE6hM00BizMqD5QC/0tB6BmvjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776591454; c=relaxed/simple;
	bh=62Fon3YL6DxcqwOgTKfXq9MFv1UrFCc34X2mYCssM1Y=;
	h=To:Subject:From:Message-Id:Date; b=caD9IqMxAt6ob/PoU1r6a/FY5RTChmXadD0bzqt+3bflNcKFDv05fw44M9qh0aixJqiE67Sg620eAD9EmJvhtp0AXgMvIZ1C+zed6hRidYM6zTZ+Wi2qJRPHpkdFjPJdYTl3FyFegzkDTiFdMDihjSgD9PCEH41/3VHVopao1Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mj75TgLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mj75TgLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCB5C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776591453;
	bh=62Fon3YL6DxcqwOgTKfXq9MFv1UrFCc34X2mYCssM1Y=;
	h=To:Subject:From:Date:From;
	b=mj75TgLnLNY0LjIgwNCWpQCVDaV8IJxLtCkEuE1F4YyeWU6LgT8LJ2QAYsvLY61fe
	 u0O/lqOeKUOrYI2v8wQ7S/H+FUXvvJYEYn8rSQHUrtMUe0FSMQLgw86rjNuMEFDYdc
	 y5paqsJ1jnzkLMVGO36I5UwYrUMgLGzDn7uTpwfF2bXJPI+EWC1iBvokjP1yK9ih/G
	 pcfpfx5gO1Go+FcgDDwieLV1UyvkPEgJkZchOVk8vwedn41QFKsiYJhbU+d7XPPkm4
	 13q0V/kEn0uO8BnJjxq4HChvEO+efK9VtFYmKywCYoPavdiSFil36e9fzK/H2CaOdf
	 RpqrX5046l9Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC71CEA7193
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659145368.3861.7436658487012942929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f5608dc639240fc9149211651c4da7437fad949c595e9e11e2e427f5786131
Date: Sun, 19 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776591453
