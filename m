Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370CF22083
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772399694; cv=none; b=tFUC5C/VM74VILgRy4q/cDlHZNsfOJDGc7fu+uAZZixMuCnSwnZaPjWTDRyddhXUfu9xprU+7TTIg0Y0EgZH0shXopR9/l0LN3NVw5BrTVkn/3vwVyi2fm1RncICsSJx8TOiAr51BEKV43YB+jtwlHO1U10lb/38y7Ixw67pf1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772399694; c=relaxed/simple;
	bh=5QWLJnmvB0F4WuX3hFaZmwFILwd31MvxVQl5DpIhTb0=;
	h=To:Subject:From:Message-Id:Date; b=OzYnEqo+Kl7BF+GJEhDLKfc53WBzOu8GBkcD1YW+acQm981jcGuRGs8WbGnmOJqd+RQqHZDVUApytUnPC21CRanlpXjcrzp0c4pE71MqE+TFmg1jU7pEmsS/lGVGXpIIOFGf2dLyjyxeMHZXgNaQ1z+vtNY9I/X1VoMYTiBDyhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaOfcpf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaOfcpf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2066C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772399693;
	bh=5QWLJnmvB0F4WuX3hFaZmwFILwd31MvxVQl5DpIhTb0=;
	h=To:Subject:From:Date:From;
	b=AaOfcpf2HMX+NHqP1R0X8o72uKS5YE0m4w3ha6Md3RWXUmbOC1BQNpsvEh6HLI6Hq
	 5QuHQmGdhaRCiMprWxkINVjlc69NCMJiasn+e2+sW+k51oCUCmj9HDn1ktQzY7OAU2
	 IY/i67Fw+UxtYUFpyKBKvDMuSsNFFxTgGQ3cYcIGdnwdWxWVT/kMPQKUJarfzxZkPk
	 YwOPSf74Rn1PZckVnyw8IiaIuENIWUBBpVT+o64Yo4kfci4bpU6hDhc2w39gNhKd+a
	 oLddAA/TelcNJuKlFJatUHyD8BjtjJVjfkKtoVEWskHOjq2HF9A5BX1VLqXqByh2rp
	 ru2HIAYaeXKYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D8FD0078
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239969361.23566.4479660180705169983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f4741a217fd7f76bf5cdcd82218dcd58154ac0bf6db34212304250b49502d9
Date: Sun, 01 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772399693
