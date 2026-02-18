Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8F12FD1C5
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771398294; cv=none; b=BWgJJaRnykvBQ3ysQXV4vYgxxhQRO3OxMzPGP3AJyuIFGzOhFbIfwB9JkqnQuYQN1KBT85XT8JfW6PY7habge+1+YlRRTBuzAfyptcJgxafI+LNyOBPhjj+XE7a15HYb1Un8ina+p+Qa2STaz+v4OCsB8PWxL/B7AgBxGrRNcsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771398294; c=relaxed/simple;
	bh=aiJ4ECvdCWqLyo77N7t0T5jXarRf1WwrFN5dy0hD7Mo=;
	h=To:Subject:From:Message-Id:Date; b=EmJmCZ2PxwdQzLFc8wyKdhrpeTcM4LhhOlCxqQa1ypS0jlvWzWEgNKnkmpneQTScvyEvTCg89+QxQgK5mOQRvHK82ntd0zNW1homAIjE/SxmGVrue09JxNEPioKdbRpF7UEyVlXLP1W600zL4jfkBYdJ29QyhdsAmLhCGxvLsCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrX2Q/QS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrX2Q/QS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0ABCC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771398293;
	bh=aiJ4ECvdCWqLyo77N7t0T5jXarRf1WwrFN5dy0hD7Mo=;
	h=To:Subject:From:Date:From;
	b=HrX2Q/QSxpUVH8881hqaosxyiXkjkiyVRMf6MKs2ur4N8m/ZcrUzJMH+w3wtzWO8N
	 wTH8Zf2yvPdPIG/F9pRnbLWWYrER2k/b5KgcZfDpAFsOAxobq7hnYKZ79fqEaVhuh3
	 MocOcBrdMqq9pCi63n9u5+OAGEGuvmKCecKDeOQEgbm5lWOV6WoJHVXWGIeMGVNznh
	 h/nOaBA9xIFOefgdVRUtd1tmiuDKed5BUHVN+MXVElIeBOZmeKlj9LK0dfmt7YbXgp
	 GF7S3vJ+BqSPc7WqqaLucmr3NtqxA6PpQbXVSCLlcyOc/cOuvsslT1n1/oRW+a1/sP
	 FaqDIk3u4nXlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BEBE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139829361.19570.3499521860434638193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55eba139145f1fdd8bf49d56fc416f94c9bf014598c72e14676b9ea718f55365
Date: Wed, 18 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771398293
