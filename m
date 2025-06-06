Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5ED27453
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749219594; cv=none; b=lcYs8qzhuLV3cABR25DYg1zQiheQp6C2WX1a1MfG3nj+bjmMHi/X8FmNbNadNojjt82fZbx+lcWq6sx6nrChWatmkxPlMf95JoLjmcu73AQpafPsYyv7PfesOt2aSNrGjpW+Qre9h8r7atQm77PKBdjCqC/JLyllR5r+uLk6C8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749219594; c=relaxed/simple;
	bh=lNvvOK2WRqzxt7n5xCbDRg0QH0ArfufWNm8Kfx3sXa8=;
	h=To:Subject:From:Message-Id:Date; b=ZMZjyyl8bsbK8PIYAlUwYLvM6TNYh8dzopLYJuRkZI1CqREn5Xg8SVtpgH5qSOxv518w3m2kq1DmhWgzdxD0xsHf9kgpwYef7w9DIgmv7XAmC8n1rOjPUxzjvU1d11SxTDv44XT+RYyPSBV+lVfONLIxbMwKpBnxVfnallr7Wao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjGQbtEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjGQbtEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2452C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749219593;
	bh=lNvvOK2WRqzxt7n5xCbDRg0QH0ArfufWNm8Kfx3sXa8=;
	h=To:Subject:From:Date:From;
	b=pjGQbtECA94w7UOeefenNcgtK31ET+SZt2wSQ6X5OoyiH3kn2f/F1FLWtlpYph5sj
	 HgIaTNdFMo7XubDtZAmcKi+bBPQdw6iKPJ2ZqwObftAUcXFWFL0S7Af6OZ/+6ugPlt
	 5e7ocX9xOY8TlIqyC8sNspumUAvKSY9HFJYwY8tQ6C6LAHswJVkFA6ABCzRDPZfScg
	 ayhGwVxt2RAVbDgBgW1SpsYeErBcRco0ID8u1Lc5rHWIsQwFcmF3PQY/B8YmdkORUc
	 N0m/nNHdomx3IRwQM60ublzJKDe4rPEJEeZvTp84tcu4izDgb/T8ZLJz7fgrKj1/WR
	 vY9YqheeBgqvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A3C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921959358.1759.597192239078857770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e333ed423828ed7e78be553a61193b716c7773eb96a951e771ea4834e4599972
Date: Fri, 06 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749219593
