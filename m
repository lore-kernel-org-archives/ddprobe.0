Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9BB2063FE
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736537754; cv=none; b=g1Icbb0PQolLGZLmvaqTrhllDVUN7L4280M/zBU5Xuk73yUnAyP84TypOuHqP7If4cvmzq5HVFPVXsrjOfKyoT9dqOXRHXlW+SIIFOY0HM1ttD9r7iEGb+iy2vkfBR2OOV9O/UZrwxsmvStEteqJ/x3oR6SlDjau2m+Yg3QOE0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736537754; c=relaxed/simple;
	bh=NmnIVeIRNnF/Z8IYt2pckQ7aK09tWyW0YoCqJxg/8VU=;
	h=To:Subject:From:Message-Id:Date; b=cL4YcMwhX1GJY8hR9aCv7+T906B+qalWqOhhsHMiC3pnUvSNnoFBwOieqM6KpzKskrUfPRcf3rOiSO7WOIGd2bTPzXjHuCw2b1L5Enirntffyb6titHFkGHl+ddvsV845uxstkYOuiuwlZa15HZJ6rAiVSt2FDLHRQ8Df891poM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmUxkiQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmUxkiQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE96EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736537753;
	bh=NmnIVeIRNnF/Z8IYt2pckQ7aK09tWyW0YoCqJxg/8VU=;
	h=To:Subject:From:Date:From;
	b=YmUxkiQjNpv4rNGjGsNmoQ4xqGvjFxoQu4qbluSXPX0D0FdM0emKu1UMbiFvhh0rE
	 PgThtLkAv7JAFBeU72/KkWPM4NaCBizFRM6pw3rNk4YNbkFL1YtUKdWdvHeqNM2YVn
	 uT35QW6K00iqaHBCpvfhXlAAXNBm92xlrgBLb6dIwQNcZ/p0bCiIBeQYcUYhwqhPG0
	 LoiudAO10DeG+v7bc+kTvvCo6F1Yk+UejyMDu6Fdr31/H7dCRaIylbr4hmcCEXq2fF
	 hjqMWxhUdsppeli0UnjxUJ4QL5Wue/TchHEU2W8x6u5Oj3VLvMxZhqqQDyhTHy37lu
	 BuI9KyJ0EHhxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4DFE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173653775362.18321.4802586364497116787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a33742ab187b4306c3567003ae0e174abd8079ad20fa4bcdbf02ae638f52ec
Date: Fri, 10 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736537753
