Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DB2BA29
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716057143; cv=none; b=Rg8O019FN/vLBQRe1MJ3jw+k5BmpSMWg+rahKLwq3YaAzQdGTe5OdMp9+LSX/RL5XzR86e7lad3QyL45Yg6JakVuADSMdPHU2CjIbiF3m6Wc5faZf2I7ZTf8F16cxbKOx+gQfszeujsewq3DDMOuWsdCnA0Btws0auU8ygJebV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716057143; c=relaxed/simple;
	bh=JX7z6vEeMs5F0HwaHqmgLAjHUD5FuMP0O3cq+twiJoc=;
	h=To:Subject:From:Message-Id:Date; b=qxsrY/4uTvRWyyPbBYIBH3dyqF6dUhpuxXKuSRtF3SXRoqLl3A1kqUQKzeh/XXTuunDQDeN4CZ+4bJsrtCQhjsAJmMlxkCfZJ2rJ987yqHuFrFc3grgq/Zf3x+Cges/4gW28afuoZ1Fdk/QHJUvwiRRakNqYmxhQ3u9pypqB3xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/0GYfQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/0GYfQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABDEC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716057142;
	bh=JX7z6vEeMs5F0HwaHqmgLAjHUD5FuMP0O3cq+twiJoc=;
	h=To:Subject:From:Date:From;
	b=K/0GYfQ94i6ZAXOxaR1h3HrNaMDFOXPXUXOsMB1Dgi7UZai8f7AFCMugvBFsvP5YN
	 g/9FlkCKVOxSfeKYORlJPuKrr+9bkhQtXC2SN/4XzJ6QE2jZWTTm79OmvLk+Ttizac
	 RulrmCTrxPqa9G1FHVjjEkeVJS82FKf/quW4HjaEknkd29/AKvPdcnAqLWfD7LGJWe
	 tVYJkx8UQQVPnafRtqQo+6upsL9saiKBMWPgNfCWb8a11PN2nnM/gR/9cH6B2RAAtM
	 hR0ilu1lzkD3726S2t5jzXwggR3b+31wAh2Esng7uMhksIBBz+CWsaEoYHzJx25btv
	 qu2tSQVreEyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68F0C25B77
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171605714280.26600.11760627813591401898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b2524f3c9a8a88bafb39096615b170677733be243bb82d575256961155a9e4
Date: Sat, 18 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716057142
