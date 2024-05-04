Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA6117999
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714816943; cv=none; b=UCZIRuX8hknin5oVPLZzVr3v9IDJtFxeeMCFWSXZBWCJsCy0isTp+ws1D5Ga1yF4m1DP6+nbPQ4oaaK12FjNxzF23ccMR807Mv8CW9unrqdxJ7I4NgUgcBP0vD5GuEZz+pmUHfAd8eQDchS8tXMuelQPGH2lHQYiJDbktaEPjOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714816943; c=relaxed/simple;
	bh=K147nAPbx0hNEV6HdHQaSiFKzlzSn81Xj/KSmm9K2Nk=;
	h=To:Subject:From:Message-Id:Date; b=Xpoa2ga4OEWe1krHu8LKTgWG74p1NuRTGrfByQWW+YN8m2OpJQ6Sp1i8JB0SzoyEZ7JjUfA/r5kSAVWGva6fpv5Rf6wdNPn0ZDZckpF0F27Mz3n7sIPIN26lak1aL5wFSD9SYePQjNZDmpdLU/KDQn8YHBOubJ9mvNwVcU3y0ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWGnZeYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWGnZeYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB730C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714816942;
	bh=K147nAPbx0hNEV6HdHQaSiFKzlzSn81Xj/KSmm9K2Nk=;
	h=To:Subject:From:Date:From;
	b=EWGnZeYB7jrpL5V/bkJ54OV+31CItzN9nX5tAQ4Dyc48AWxTQrAT2ixVfJ2ZsyUO1
	 zefKWWW33JyK+CblXHdf4cTYlnRIqD3lRjUyPSjVxhXfT9X+k/mvjiVb0H+p6sIXI1
	 L5q9yU6YCtQ7Lhjw5nR+Kk8LjNrWelmfeyrECXKrY0XSIeOa/dNhEFWuETOpazyj1F
	 +L/zR7VvzQVmDRkCCVkkZhhd674uSxlPscdSLfXiNiKkVYnZIXraAptd41ELAn3piY
	 LpjlYYthYDW17KChzXndLVM6akjr74fMf07LU6IEqw0ZHcxzsrvjpjWvKgt8o2Y51U
	 ur8cdfPDolg3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4744C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481694278.11231.16464312809067396231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f96788fbeb0c926d380873261646aeee47bb6e99d5945142e199396b34ada9
Date: Sat, 04 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714816942
