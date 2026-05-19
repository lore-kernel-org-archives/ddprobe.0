Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8752BDC1C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779220234; cv=none; b=QXEXd2dFmYM4cCVYD7Jzzdj1aTLliY0LVjeC5FA6kC5qewh4mIEi20o/A3ijrXNyJz01f6XganBwDiHAXMgJ04XS0lRGNMV99OglSoelRRIJmJIcj+qfyIjnztLzk/BTJaj6QDMQfq6fPj/tIWa2aGc2pCKf+9FKBnYZfb7b2lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779220234; c=relaxed/simple;
	bh=KmhHZp324ne3ZQIJqE91B1Whj6YqXEn7zYtVY8h+5No=;
	h=To:Subject:From:Message-Id:Date; b=ZcRrk6Wel04H5G+bNJy16b6h/8iZdF5ZACiuuIcJod0Vk9r16ycgkSHcBI1YDIb7sDyScZ6WFCkcaf2sL18kfl39Fc7vRmbQ73nNi9RFY0Sc3N+Z3KfvhwMCReqBT2oS+xPWaoQ0qVYa3h8yjTU8RixaxrP0aAc5HxKinUssTFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2t6T5NH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2t6T5NH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A98C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779220233;
	bh=KmhHZp324ne3ZQIJqE91B1Whj6YqXEn7zYtVY8h+5No=;
	h=To:Subject:From:Date:From;
	b=B2t6T5NHP8DbmWG/IyJMCA2F5mcPGS7szbUbc1ct+mWYlD/pqBk+mjjLmr4gPGlZs
	 VsT3AlcCqDIq6m1j7qoNaPo3MimPrmtXmoB6QCBFcZEhTo++xYsGVZJqsw7s/UhK8Q
	 7QuX48OMyoodi8JRg6TXk4vaT98irH6r35p2UQaqtKo2NQ1BZrO380KEzfE+PTWQef
	 VMmQJem3hp7LCkkra9peNKn1d8IXYQeKXZp0miiw+obwcJ/Fra/p4uj/J1kizGdLGO
	 gMIZE8k7zPsKNeEBLzP5ek2EsHDHxWqR3dn5vmGCVS4fx41Kg1fMSuGW2BlYYHSsNP
	 Sb3PcMzvPvRFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA939CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922023369.6485.17218860617912516201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b074b827309e4df4d848ba8fa7a962ab90fe951a3eb7cd85a1ed580293d34b93
Date: Tue, 19 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779220233
