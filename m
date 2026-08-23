Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2703909B9
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787498434; cv=none; b=ewIJPx2WDj3Nu+4gr79d9VMGGHiHSz/7Dvqxzot7NZjBLp+Wd+RhPOkdW3Rp5Ct4/YkAhDs/RDZ2Cc8s7Ih0TBbyw3eyjBdqHyHGtekEfoiDMM1MUsLIXwjWiyVk7wXuJnK4k2zJa6F0G/yrj3VD+l3vD49G9k2ZWUlQ+bmXrhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787498434; c=relaxed/simple;
	bh=eylXQhxak8lvEFVjDXpNwFpN9hPthysiyLzXXX/TcHA=;
	h=To:Subject:From:Message-Id:Date; b=eWeojRlHad+0pmTQq0/VATgz1FUnooGSCSFrivovAsSMHLTvn40vkxNUos8lakKN6ghpIgx51vYm+CGHS/2HDSLntljJXnPT7WVk+MwPzFI8Ey+c6XpTrKnn+ed9bfUTqMBAIBlAUeqwSwZMuFWeeGRy3gCs0Jy4jwOdcg6Wobw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVOtbXsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVOtbXsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5A6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787498433;
	bh=eylXQhxak8lvEFVjDXpNwFpN9hPthysiyLzXXX/TcHA=;
	h=To:Subject:From:Date:From;
	b=BVOtbXsZwQgkKI84z9ssPZFxusbB5vx/iLH1jjBPCZRZ8SVy1f95tK6VTZWh+kPEW
	 WZrhGhGoAdK3c38buuc4nPPi+ACldM5lFAxjIpBYbbxIdFkXeM6kX0RSQowoWZ2Lre
	 yK4IUFpQU1yh6u8RlNMmFODTGa1r70eSWx0F3Dlb+wkExMzDaS4DEq5YBMfVcsMU9+
	 i+VzIRV6CMJXUth8rbuqwCyolIftPu56f8ye6Setz37rzkbKhrKkj0OFTofFvFoZRq
	 gK9Kr7kmsvbdvBNDMvEBJZ67ix9PpKGRuflIMig+kJNyjunyMl62Sag3iTXR8hIWHB
	 phbyT0D2DZ3Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE9C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749843368.26029.8949209415503648354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f993fb32f8c45e7e527879f3dd78feb1f05c746790837e0422b5c92938ad5d4d
Date: Sun, 23 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787498433
