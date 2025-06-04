Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B2C1F4CB3
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749020994; cv=none; b=S7MgZgDf5AhtnEeRUDsD5OhRLtfFq28utX1BwTv3iIbZGTlallzCQetnzu8epODzH1KNmb+Knh/r5oKIHgIuwJzMFhrjojLbsvF6j3q8BiDXrVlEUCFZfO4g0rXymrwuJ1jTmHrgMyxSL5YDky3Fs2rxJGc5STdL8cqVAJLuT2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749020994; c=relaxed/simple;
	bh=QRZnFrJwS5FVRj2wTfO5z5OXognRx21DYJSQn9RAroA=;
	h=To:Subject:From:Message-Id:Date; b=BV+eWLmaEQdhMRdkOJRj0Tx02uC/uf9Ztiu10CfbxKs+WeJsMD8FINppVBCUK+Km1WCBk4zfrtTozisogDNkAB+FzeuGsRRNjDRr7ljhZxiKnquLlyRTDLNJuP5gbqC56lIHSFwmpI4aGnZJjyh25ruGm24SDntX8s8obow4vnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/qoC/gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/qoC/gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F6C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749020993;
	bh=QRZnFrJwS5FVRj2wTfO5z5OXognRx21DYJSQn9RAroA=;
	h=To:Subject:From:Date:From;
	b=g/qoC/ggKVALkCzx4EyXrlA6P3ENDL12T5yxaZUj1VIjvCLiFiutgBdC0Ta9tJ3Ht
	 hAwZ9I+cFK4VGDtfpc5CSZQ6Hm+EI2uxNn4Znu10GOfn3UVT/83hEy+BWsTG6etNF3
	 Kl/6BguFtJSIBZUwIMPH0T4igVXt4cciBExC9uSCW2qDVeNLYtKfmt/3vYgozZPEfU
	 hlyMtQbNor95MBuJCDummaFm7FtKNCPohGk8CMduX/zwavUtGK/NoRYA/z3syTTAgQ
	 46MJRQbcnzvPTQ2U3++CIZBj01hqxgb2tDJv+TQi0+NhKHjjUK9w04EdFE/w9BXup0
	 /G9p2EpdEYGkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9344EC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902099359.26276.15484220617831195950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06eda34be191c4e91b63a4ecc1e7926efa1806b8d4ba8b6d3b9935dfcaee5f75
Date: Wed, 04 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749020993
