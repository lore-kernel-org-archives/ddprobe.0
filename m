Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414C06AA7
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 01:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712886563; cv=none; b=GV/sj7uNyA52DD0rwb9y8MbCjcKnuwFNbxjMrjMFHT2HJcMfFPfJIBEuDAaTvLXuf1LhO4C7DZpwuG6+ch9adCUDhpOuOFRyGPb69JhZNK+oaNnDUhpsYShXL0JlQp+G/lwzrtOSjTMNY9LJ1sNDe1K+5lRhxCjc6H9FX0cnZhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712886563; c=relaxed/simple;
	bh=8W0LDSHTPTXbX2i7J68Wp+GJHEzvtR/JcwwToro6+Ls=;
	h=To:Subject:From:Message-Id:Date; b=Dcd1bIQiSyjdpKPHWZ+G7tff9WD8WbsPEYS2JA5DstbW15d+K3CjQVGHhwCprV2Dw5AoViFhZI/KcngSKwS0J9h5fC6MfbhsTxwXF/8DqMleZOXtvbKNgkERPGWw6GvYfPPJd7qq4kZrv89XDsbpz2gdPyCp+FmpPXdBjMAHy30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0h7e4mA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0h7e4mA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0075C072AA
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 01:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712886562;
	bh=8W0LDSHTPTXbX2i7J68Wp+GJHEzvtR/JcwwToro6+Ls=;
	h=To:Subject:From:Date:From;
	b=Y0h7e4mAJsqwby5OKxcokY0VlP1sbZv4lScHDHDcBnVU+QYt5fS+aSV/A5YUUgu/r
	 o2e6ktprHqbINooRB8GinwHqpiS6xCnJpfvTDgRidqX5+RG8mAvbJyYEt0l80HGbjl
	 dnvxydxATY96vEOki67VwdITgG3nybf9Ubk7kzxQwJqjm6+QHNAZuEqK5vl4GZxK3X
	 Orswbaon6mRqN4+OZHzHok7Xz9UPAFplX440mzzOC6bByvi+HkZCDqPi3Y2Qno++MC
	 ndCMkp/paEaJUTCuOmzC5E7I7cJLR6k5QqR4g//k7eDTOVgJzYmVcOI/de4q46yrro
	 VI4zxd629rw7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC83EC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 01:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171288656276.10596.1469025990397423912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1cdad3a89faa16a6dc2cc64271f7cfa96451d647c88cfd9a437139d9c110f4
Date: Fri, 12 Apr 2024 01:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712886562
