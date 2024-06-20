Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5460821A19
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718881823; cv=none; b=jfCrynOiyC+pnfhbTBEWs79yDo1csrH2s1feWSE2w9/+OgT7oBKLkHNZHub5ElmQpmJg5gqp8UNwt+GUiqdENLVln9sIss7gRc5fYBCXnoyviC2Dj7ldOyG1iTi3711Tam9z7t2pCadpjzvJzwNC4x35+RGO7JwKvPkQuNz7+g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718881823; c=relaxed/simple;
	bh=P+0kySvfu9MeQYL6kN9DzkCZVG3u/tpHyd8SVrgEtjI=;
	h=To:Subject:From:Message-Id:Date; b=cNx/CIJHylNr1NMMgU6NrE+WwxixEV7hTE8hxiKJ9TE/yPO+HFx8TSEzx5Q2XKOMp6SUCDH1uKOUKOCS1mNSimMrlkJRhg+6Tvh/b+OoM7U3+wi7+QjfrU7t0qeg9+BbLmvR7lQzSkTR4igNxUDn4falEzcbEaUwpODmzp95iJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+ZurvvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+ZurvvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64DBC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718881822;
	bh=P+0kySvfu9MeQYL6kN9DzkCZVG3u/tpHyd8SVrgEtjI=;
	h=To:Subject:From:Date:From;
	b=t+ZurvvJ5B//GHQtEeIgiyHveFEayGN3560pIJK70Gw3xOmWwMTWgWW4G0yR/icCj
	 jKQhf/XqNXyl0qFTaKHeb+8BL8iUzY/fXJpNJRu9HJxPbWQKWBzrt6K/lsV/yZKMjm
	 Y9IfVEFqL5nx/jVc9ehPt2gYJfPK/KP+2CVGT7XHF//gUfMtsJs85hnDJictoHD640
	 Zp60VnUjNDsTOncVt1WxdIMfAhY39shT30ZZsK5OWAY0oISUn6IvOvkK6Rcq3qi8/C
	 gWphs3dUFpg9QDmu8dyb9YrfCv9EWige9wbhEinoAOCrWaG6mcrrWHr0ypHWREVIYq
	 6Hl2v7fwra7CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67D3C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888182280.12889.2825433939815919187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f09a6f502ec0202a919cb2e8c7529629829ac7cb6c9bd5363d4f9d5524b5878
Date: Thu, 20 Jun 2024 11:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718881822
