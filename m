Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C77942A9D
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766608434; cv=none; b=mHufcKpYD7IHlmmoHe7JCaas9oNheDfqs9Gp88jgVdrU6pTQKt+lkgx/F5E0K+9rDWYzDSU9WwfPOYDAwonm8wZnRie/xQD7yIADWxhmFkH1DKkEZ7klXoNwGz3iiK1wcNVNVIl77XWaakf1omHvPGvEgT7/S/wWzvKlc4VmcBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766608434; c=relaxed/simple;
	bh=ghMN3vXwn0B/DE+pnvZ7VtSTiNkgXpRJpxDAwmduvrw=;
	h=To:Subject:From:Message-Id:Date; b=F+jwXSkfaeEb3eQYHtgfStlwE8kS+zw9lzf6kah0SHnkUhvU4bmJoLuRiBbIq7bI+WY3dIJWfnDyGxU5C3YGYpesKMf7d0bXQdubnT8wMqJBY/RGOnkCnM6C0k+TGyuy7LUzn98tQ7lB7lPL67cnEv5dfN7jOTQ/7dMFoZ3FFJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AE1DPxoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AE1DPxoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F6BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766608433;
	bh=ghMN3vXwn0B/DE+pnvZ7VtSTiNkgXpRJpxDAwmduvrw=;
	h=To:Subject:From:Date:From;
	b=AE1DPxoFk8bXq0essEZFocDuLtFfp0c2a78abRYIPoHqK/UbuYTZ3OhL3wzGqwRF6
	 XbC3fl8i9F2vqD14Gj00kZA1aNuBPihmicBTSXlWgd9VZ0b7IfatL1IFbUQPfFO8Ju
	 fe8XTgUSRkiEbBUi1bDl7vykksftQcEoYTCoxESuwaBtnOdcgMMwtE8mb06IG+YfG5
	 Wx6EEUDnYniRSmtduQNkU4wUNnm4HhJCiJiS6jvzRqzLnoFkHRffblZLvhcJqPkovm
	 uApXy76dNRKOQ3Eri3zz3neyt2ClUiIWxmNtnmoEypXmtxxb+dzsfTyWN0juhYWbpK
	 cU+IAAW5LOgkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C99E78490
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660843357.429.9167729998659314485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e3c32c6bd545f803a5beed21bf66edbaba0e8ed3f5d64add6dadea026a53aa
Date: Wed, 24 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766608433
