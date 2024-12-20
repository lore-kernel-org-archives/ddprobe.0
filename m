Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE3F7DA7F
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734677754; cv=none; b=u01Z2dTojCY53WrY0RVe1EqNi7iCFbmlcTvR+mDY+y3fcpWeiDyzA7BBbei7GWnGrwPD6+vLHFoOrbx9PR4K7Jlr8ArxgR9QNMDPyJ3p3nHhe9X0UfcQqK72f6yj7AV+PD7JnPmZCZp139feevv7usLGyWZvl61517usehpvRh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734677754; c=relaxed/simple;
	bh=fyut05R6/+hdhVPf1qPtT9ILl6IEBeTuAUWNSMMKXsA=;
	h=To:Subject:From:Message-Id:Date; b=eafUmfyt7Ebi02IqmY9JTWL6mudEceiGynK6VzMaclD0DRGvQSaiiGidA55sss7qz1Bg+c2zFZANDEmjWTgdWyl2DP8ob6hPYn6I3OHz2qUZHWgNOH1JC8kS0mP+r7c5BcQEbEgTcMdjKgARCNSAwUFsnEFZmRJFp49juq0tNHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfXpR+N0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfXpR+N0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE36C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734677753;
	bh=fyut05R6/+hdhVPf1qPtT9ILl6IEBeTuAUWNSMMKXsA=;
	h=To:Subject:From:Date:From;
	b=mfXpR+N0+z3X3Piqanc6jRE2vvNE/cu3ZHYNKJejgFO1jI+Ji7vdgasYXh8jDR4EM
	 e/0LWG0TLRpe2fuhM4TMhyGUHfwMfKzJN5Hid0LS8C8OjIHtWIBePZVa7KnXyyB4XS
	 RptfnKsB61tBI2YbpfUJl+JM6r2P8nrBLjB5r0Jun70NgmPLdKn2N2WP1gizfT0p75
	 wfqtA1Ct5rcp4pcxQ+lTM+dCdSBKsTWRuOxCjYwurPl62XpShE2/vWRXkRVpm4vMPI
	 0jV5xpIO5HIkU2LbKFakSdx1EByEHVqlgxNGWgmTEXzSKBZcd1ewae4zajtvWU0erm
	 Oz6+shEvFvQWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D43E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467775359.15482.6344492460501446148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c0238987cbdc34d69e1636acca370b74213dd0ebb2664755404156b840162a5
Date: Fri, 20 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734677753
