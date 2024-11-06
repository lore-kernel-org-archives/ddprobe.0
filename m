Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED57C1DEFE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730912754; cv=none; b=kqRq49nHlc532jZEH5NTutkb8QOXTWjf59QoIBg+UcYjpMpQ1scpkKhyS3cXIwjFZyT4JgU3yghzHA54jd+wxcWsWbLEkYYEZgBQ5DKE6axaxyQcJwiVBMIs8eQ6Dn1JZF0/qYmFGwQN6vI5QWqe9um65p8tc/cr2+MuN1/SvEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730912754; c=relaxed/simple;
	bh=iiB0DBGegcHFwqGQVMyLjG+jjifVhJKamfFqFa0U9D4=;
	h=To:Subject:From:Message-Id:Date; b=T1UfDGg9cei2dJCKo/6QhfhWYCpyrkBz4WMJgCtbLQ1Oh3aA5t0CtIyCcLgI2oH3hGIS5g7Bxrl0HDarFacctAo55i+K324I/j/39CipS3juctZNlcCjSLJR0F21c45Zc/4oFCWaEOXrw1ft2mG6GANbICz7BklsztbVzCrbO5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Njtxcagm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Njtxcagm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F9FC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730912753;
	bh=iiB0DBGegcHFwqGQVMyLjG+jjifVhJKamfFqFa0U9D4=;
	h=To:Subject:From:Date:From;
	b=Njtxcagm5NQxPjktfkYNExc0g2ZHkVjO8klg3cyLNWgfG3qoifDGwJCvlX09QtiEi
	 anQWtUKD2ckNlHjbpqENz/6g1pwpaATzX7cYKtj9cvehM+tg95Lsn8I0EBzId6YYdz
	 bySwxdvOmT1GoG6kD3dZ7xHA1eITQwFWaewOhJL494YuPBYZfpMHXONtPRC+G5A14V
	 1N5jXyDAVr/PS4En8DP/X4g0jbe/2eQ1p7o6HcHP52EyNq1EwzaXuNrwYxOkwhLbXP
	 dI1IwCScz2OqN8G6IIozHUx+eoEjAu1HTLSf4KZPsO49PjnddrhKH+OaFQztLooC7N
	 suOLcKk/RaDHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB21D59F53
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173091275357.8961.2450175486087832660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef98db9e6944b5c81594524cb013420a744720324006c5318f1eeeef788021b
Date: Wed, 06 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730912753
