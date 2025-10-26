Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2741A9FB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761521994; cv=none; b=VsJ8o+ClBG/7eMqeWd+ug60n9q4M5jDPVVf5bbfH7ov9BgeHIOkSgUHFelNfP/8BCfsNExTNbn6iJXCz8NmksFUF7l6u8kBQsY5h3NPWKjmBWxDPnFsid9VVTgFbz8U8LwOrtGukpM/rseCf4iwHNE2hvufITO+1s3CLRU73McI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761521994; c=relaxed/simple;
	bh=bNxttaNUjr/4Lf5Pt4LdDExfJO3/3o88kt9GzFWlWyM=;
	h=To:Subject:From:Message-Id:Date; b=N+MPv9DevxzWnK3TA2IoGKtkdPm2zEFtAG9aRYo5fIjiLJX6ttQq68KsYUqfl/8Lskd0lREDZkRu1brFMVMMzKYQWol0u6QsNOyLFeBkxaFvUz+fwVK/1520QDY9lLF6buXv6SJfd7j79e72TUYNxx9kOZYrGOPTjXaFRx05K9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApbFg9Pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApbFg9Pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A10C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761521993;
	bh=bNxttaNUjr/4Lf5Pt4LdDExfJO3/3o88kt9GzFWlWyM=;
	h=To:Subject:From:Date:From;
	b=ApbFg9Pb/sa0VyaB4jd4+aKwNGzRopxX1mcQ65hX4bMPBVrf8y+qlWi0gMpERDSlr
	 QPe8EmvTcIkmD0cWY2GGRzxu4unLCP+izPjyAz8BPnupTHo5ZE6e99cu7jBYV0s96g
	 3O8e8rSJkV4tqejdXlTOlhxQps7luWdZv45Ba7xkkfBllVkgoef6LbqG7YQXdBvdbH
	 s583o0MX35KjxkD1MDHO4ZZoYg8yXz2UWLQYM08UVxXc+nM9h+dzdnkNomXDKjxU6J
	 6ZFtHdITKHrx7E9Oq3883YiUaTtgCmPZu7GPmqvx93qiz11IeylgqDP4+00RiTarp5
	 cQgCTdJ4lMgug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976FDCCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152199359.17569.10808115979546275435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6909a3687251559474fd74715be3831ee668ad47ef68c4e4e56b7f7ee3ca16a
Date: Sun, 26 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761521993
