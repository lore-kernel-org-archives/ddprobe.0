Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF4328642B
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774218894; cv=none; b=UlOVbtg6NF9VoSDCo2QgcaxX2On6hxdQrgVrIWhKCPXeOB7+HNhFJit3wSr/gqmppDYx9smbBJC3LW9xjm7arDeQ1LiufzUfdsfoIc6qmfdIobS51Ho0w6EA9TCmY2WJ3mVlGWng2LXMH8AUJMpIi1t5pn5Uwy4ls3lk0b2q8HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774218894; c=relaxed/simple;
	bh=eOYmv2lh5wQUUzp0HWAICgR+ZVou6kQCdrhwr/t6mgw=;
	h=To:Subject:From:Message-Id:Date; b=L47fhVYO0yxtPeL7wIKSxDy6m71UO6D+qJuWSqfL03R7o18UbjBQEtKK28QoDN8LvYnhyh08pT6ygYq2TAvsiWRP5H+dVdg54l4rF8NP+Cjn9CvKPRAJo+XHqDmsrRVr16CEZPv4Qhyc7+Kv9CU/nqQwdx5RUC8u+XpcNwxNvvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWdbYv7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWdbYv7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2ADC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774218893;
	bh=eOYmv2lh5wQUUzp0HWAICgR+ZVou6kQCdrhwr/t6mgw=;
	h=To:Subject:From:Date:From;
	b=VWdbYv7HpT3OGu5IR1A0j1CunoRKM0hWwImoMEUbFsE/OwvcLSObvCMAQazzYdy4c
	 DsS7gDMiMeVkOQ+e2kATk57c+qBDxehNn19v1FEJKiT6N8NNnDrMkp5iUOGo70YijY
	 rJbEak6ixboHxFHQAQWLGatPKLrjuK5xxbOGmFsp3H9Eikmo0VwkcZO+IX4yyxNEL7
	 INGhS9QgQLPY1fCtdRbJ8yw7gCTAvOMBCRYXP0ReinyoSN4iu19/PJsdFgwovYsK0l
	 81gnATJqi7dHmtz6S0HucK9Eqb/9R8cH9yc9CiFBAG0zYMfHNB6GR2LA/60zwpGlpB
	 SnfY/I00/diMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D597D58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421889360.12625.224902546577501033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd24db55fe99e795fa523f45f51bc1fcc9f9188f499ab522edf716990dae5ce
Date: Sun, 22 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774218893
