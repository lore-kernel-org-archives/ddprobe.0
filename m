Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161FD1A9FB7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773558894; cv=none; b=GIj7ELwC+8KloP/vVIUcNhP52Rl4D5iPaAjAHeLrEEigqmmdc5aDD6DQlJ56NVtiprT2Mn6yFl1iYBlyml4ajG4kJpwJrymlB0hjjJPnEUxeum3SaxSKPO9u3pJbK0ZNo4RJTa5m8OBc3sSYLstzk9iOLE3QgAduWQAQg3TeNY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773558894; c=relaxed/simple;
	bh=dOXgCFSlcLeaZJxW9EDLBYOL0FnICKbVoG1IeDhFJo4=;
	h=To:Subject:From:Message-Id:Date; b=hC+KFUO5zg10ASh/ImxcwmfhVkJGUutOLaedWaIiVgNF3A5MbhV1vnLl5JDpJkDKQPj2gbGsxD1FeHWfsvn/+GOYfRsrXrUEzYIjrqUSIdwMJVo+Qre1vfj7Fg93HVZCQuDUDIdaqDXGW5YSl0sZ2WptessE6Q7AjX7e0SdEhok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXizEWHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXizEWHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF81C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773558893;
	bh=dOXgCFSlcLeaZJxW9EDLBYOL0FnICKbVoG1IeDhFJo4=;
	h=To:Subject:From:Date:From;
	b=CXizEWHXVk4WqBqkS8/bA41GMT3uJ0pFdgWIj2akOARtejr2vZLoiOmnSkQV46+ZE
	 AMiQY1XtmXySNiWqMh9pdys9fID3uvtEicbGuD6TVXNwjQg6GWTkc3N1EPTbtUJAEQ
	 JAvp68Cbqidq4vHkrx2tUdN+inX5UBEJm/FDpkHwz0gSCK8Q8UfCxK3CPtx5LreVl7
	 FKYqF0zxuk6yuH/8fvmd1PcHrWJZ8MxgroDiiIamD19dJZGrIDGOOx4cmf/MTCjjGn
	 bBNjmz64LUxFdGrGWXj5l54vadB8jJDx9nNMb8pzqiA2hK2w6YJWgGMQnIWjCWw9hu
	 4h7Hclm0KhEGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FAD58B13
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355889357.14781.5637221683893176648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4351ebf9d1d25931d53e7de371df96a8920793e55f8ccdfa829b24dbc3d2ca50
Date: Sun, 15 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773558893
