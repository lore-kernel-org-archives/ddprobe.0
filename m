Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A49527703D
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759429794; cv=none; b=Ku9RhRmMlyOmauHfikmYx9E+Gs7voOx9E5CfD+gRQ3lacfJDZGiwrj4ggZF6Gg+x16enZE8AuiJ3jSqR9dGNmvT8K6Y17ulKpZwqjNIAzSNpZ65r/FKUm3z1BC+bVYPHyf4iudWIOTle1jo4EXBnADgyYMyk0mDShVLjvT7t+fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759429794; c=relaxed/simple;
	bh=pRhMZgoCtq9lbjtR/Kxi1/iDIcfHCYVRGoIDXpCWFyk=;
	h=To:Subject:From:Message-Id:Date; b=hPObfIr7Hwv2Z9z8946FhjPTLqtliB+Pi1g8yC/4F0yziHRo8uOAmUJ9Z7z+7TCIWeHH/QXsjOmne/iP9A7aOkUd+7GnIPqbLUduebaPjOFx4znnF9IBYtS2LDAk0Zq86PBNql0Mo8oZNUCg2TsU3cgyXRyrVU3ox3lejMK6DeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjEZRsRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjEZRsRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1419C4CEFC
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759429793;
	bh=pRhMZgoCtq9lbjtR/Kxi1/iDIcfHCYVRGoIDXpCWFyk=;
	h=To:Subject:From:Date:From;
	b=HjEZRsRHInUcA/YrAKjY8iBH4qSDj4TYYGkfkhYKAs9+/COK+mBFlhLNU3NeYhmin
	 fFbSlTpUeO/NvMoXJG3EZKa8zjxAvpCQ5/Ub4agzfUCoHTHSLtfQoxq/Sc/KlwvSmb
	 W5SEwPnzPKLumpjV4aTQLH71ubv8R7gnvJdBzYAeZ0CL0ZkFY5JQNPSLGMITT6brLQ
	 9xPW2kC8eUCTjIutQ6QsV6fHZcdfA9R4vzUXA9dq8nvrmQqzIV0B0JHAdvDPmzheI8
	 T6h6XeVzNXku2Amlb06/OYIA1QQwUwkYwWaGbegrHJ2cfz7FDj8VlQxzwNJm/cvXEs
	 BmWQFncxif/8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB54CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942979358.4401.9334143541293349073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a854d066ad6f0cb418aa4445eb434f56a86d2154f3beaaaeb0656e1eadb982d7
Date: Thu, 02 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759429793
