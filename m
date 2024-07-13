Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD9D101D5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720857023; cv=none; b=kRa3K7vm4NCsYDfrz6OB0LVRpelx6Jhc5dPfmPNSXbIgm8Yb/p+h4HnF8CPvntpQ7oEmyemL4mSAYPwLdjB8k/FbDEVZxaJlF20H+oQUECbQKxCzEDvr8A0dKWgXA3XzxUgd3CWlLX+L3KR6qi2uEPlJKPhdsUb05GhEQDhVLas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720857023; c=relaxed/simple;
	bh=AF9GRWul54EIRc7H18oRV9roqsCXdz/wbIenXupF4RU=;
	h=To:Subject:From:Message-Id:Date; b=cbmDpcpOtr6js86a0j1Vk6BIlTYZAvDGtsSxE9vXsoivx8VkOiQl+BYHPRSv5W9bdCGovIulqWg4Jaq1CLWpnE0+MFPQJqZ1KR7s77lJtwmx2eXrDatfTm60tEFRFnKxwgBn3IduT+fGpVE1SzCSlTAbv5DjEY5XeeTzuTVGjZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EezYukPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EezYukPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1048C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720857023;
	bh=AF9GRWul54EIRc7H18oRV9roqsCXdz/wbIenXupF4RU=;
	h=To:Subject:From:Date:From;
	b=EezYukPuZ+GlXhlJSBKWw+oKc+1EL0GgrBjiC3A1muDJig0y3ncm7RccnWNB4fG9k
	 a1FRhdTSHA8i2V5lyh3MTaIINyvnJluFl3Ut9brCyd9riiFxgjQWnYNGRVp/vQf0kz
	 jGC08YsUbDex3/OUsS09v6ciBT7Nlxt1wEtofx38GjEbjrs5IeD6YI2G+gwtJvM91l
	 O53e8+8K1OmJ1LfGwP1afLIj4EWduaTC5K0FLX7TbkwyyHKIQqTBDr1DSTJ+4EJyMW
	 WjAqFnlO1pJo3hGhkpqZZ5FMUw74aZMfrC64YrYUwL5wGu0hQaocvjZ3ZlVBbdA+i1
	 jyrU1GEaB1bsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D57A3C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085702286.4708.3634164279542445633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac956150396b5e13ae0d12b80759fa559a40645e180464e3fb78c616505b21e
Date: Sat, 13 Jul 2024 07:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720857022
