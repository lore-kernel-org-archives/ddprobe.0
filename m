Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290A6A95E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735820754; cv=none; b=tV0KVHbrm/YJLo1Z2j4G76hoAIjYPcfMRzf4cI7gpT+JAyarRcEHlOS3T6MqBRs4/WkykP+7EsuN5MkWBxFw3JXJKxtf9UZSKNx8t22gZz0/GsZ1+NTzZgPbeMwbOvFLhmJ5ZlvCQ/dgYTsf+hERd3VO2bvxLub3KL34mY6qWro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735820754; c=relaxed/simple;
	bh=O4MSszLhRc4gOUAMITBv6judgbO4L/XzQA4Bq/JQuII=;
	h=To:Subject:From:Message-Id:Date; b=gxUipnq/r1mnMbVvp5sC1bNYQJqsqejctflsllKn4kkwLKN5dcDaN21850hKWtxG8IAe0RAujWTwAzA6Hv4r9G0mii1nX+vWeyCags1vk4jnf+aQ4LwSnDwxO2WmjF6sk031deSx4v7zpj04i+SRBHyeM1gsOElirbcYXpgH8SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJf/Jqm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJf/Jqm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2BEC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735820753;
	bh=O4MSszLhRc4gOUAMITBv6judgbO4L/XzQA4Bq/JQuII=;
	h=To:Subject:From:Date:From;
	b=LJf/Jqm6O5gZ/J19AH8i8hnuuPKNA1iLuVQEsiBszY53baYnk2nPeQ2VoZaBPqPpX
	 jHK8OIS+Fz7Qn6GJ5DoEKu+ogSD4W+nlj9HP6LVMXaoVFeohKYYtq/RPdXTRtWxLH4
	 YNusNDYpk9AxMOkV+6Tfu6Vwsr1VakiSA/5Fbp0YwsxXg85ZxUXsUdtBLtH1+9ql59
	 HTNVBHyap/vBA//MbYEpNUvZBwqreOGUyky40YuAUchcmyhjIJ5P49mPKA5l6gfBrj
	 XQz+SX9nLVEyf2mHJOeplPdvXTUNPuGIyLUu07ZOPQTQjRYLPp9JEQX5vLAaDY74Fk
	 KI8J2nsfYn5Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BF8E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582075359.17131.14569256389260731003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef81728d67c5af459c27acaa69e1931da9e12cf20a4ec53abd066b708e2f83a5
Date: Thu, 02 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735820753
