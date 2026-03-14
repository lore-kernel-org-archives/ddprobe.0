Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1F13043C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773526494; cv=none; b=e0f9ovvRw7i+Fq+tqMOUgWH8eTEkA0HDuZDvf7fJZY+o0O2pOOAFiZeHrYOwCX0yYqjXq9aEAu9houEYlEqVBligwd22pevRC3T8T90pnE0/o2z/0F8YHlksTd70k4223pnD8uaayJAQB0ujbXBih08F3FbHL5Ml6Z48REenGx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773526494; c=relaxed/simple;
	bh=8LtG+SdN6rhe2fhgeDoNISFh9ka1wvQcDYCCZXBmpnA=;
	h=To:Subject:From:Message-Id:Date; b=jpDVxQuB0T/5KTE+p8lbWRkBu2bNjB3uI7Vw1dn5O+gb4mRY80tSJ33ML0K+PcYEOsCoMd2WkyQQ/sCM25b+IChVaA6SiMCx8bbNYB4MtbAngf0SD+Y/WS4TDiqH0QaDelGfCGTGxtYhLUe7MwbpY28/FgvZSDtnW+z0FM5zUMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNKaAco0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNKaAco0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0888C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773526493;
	bh=8LtG+SdN6rhe2fhgeDoNISFh9ka1wvQcDYCCZXBmpnA=;
	h=To:Subject:From:Date:From;
	b=uNKaAco0Ht4DfX/Ef0PcX+7bm5gE6HdExa0h5mI1XQf1B0BHlb/Phi9ywwTon2H+E
	 jb4awMYCPE6Vy4Byap38HtLE/J8Kq3Waj6xZ7bRbPghyOb2k/6Dgt2uup5CA9dgqsS
	 +Dt82a/yT+NUGVJj5wkqchOaltsyEIEL1YipH3MVybcFd2/o1EE0OGePb6bWNfmh80
	 4MdHP/ONBIV/+cEgfcCWk6zn+IpeUnS/AmmDaRP6UfkpFx37t570HdcbkDbfv3H2Jq
	 k3f4XAlK0nh6SH7QceNcOUTxJNyRoMU4c3gIoxK5DQ77bhTIj6ZZz+/99gY31tVh60
	 8v6bzvB9oVIJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF0910854B3
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352649361.5707.9628535838965557324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f826732d5bb9e75ee2e3a0d31be49bcc37c9492a14f999f4baaf544f28833198
Date: Sat, 14 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773526493
