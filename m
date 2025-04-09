Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1122459E8
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744195794; cv=none; b=N2bzRV4lnHgu04SR5ZjEFpuhg7lRs9k+Yiu9+Xan1tOyK8SdBJ4nvsadCsYbn88c8CvkBCXDh3SKfG+A7WrE38Tf6z5v13PtiT11uVq7todKBkSin3KTDkf/zDWMeAJwvRPZ3LUMMbxaux4T2jBrc5ZnHzXMeJS9EGobWgdJ6gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744195794; c=relaxed/simple;
	bh=I7ZQMlp0pzMg6m9zc4xJcwbax/MFx8n/kBPlLBhlJZc=;
	h=To:Subject:From:Message-Id:Date; b=K8kV+RabXn4vWS+HtV9ARhCzGpYWOnItirIbUH2FxKxGRdXxMHzUDYZ/n1XI3eORQsu3uRVMdLmHb8pTj1bEb7e9GrKalPTtSh36tcd+DHYwMWV4mzfHjVxRM8dm692Nn6J9dZ+Z55EDfQoHEzcyRwGGQIm/dQ1pA8ZcIwzLWDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDiGnjh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDiGnjh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21BFC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744195793;
	bh=I7ZQMlp0pzMg6m9zc4xJcwbax/MFx8n/kBPlLBhlJZc=;
	h=To:Subject:From:Date:From;
	b=IDiGnjh4TjkgKT01R1wib4PRnTAD4Gajh5tC9mYIqm5+TXRxyYmbaa0jVkrQNZqzY
	 QpekD9Dn6E59zThxG+ZPGd2cbw6gobuOpP4JLLZFZbTodErA+vmAsqrzCSOggRs24q
	 jfx1VZtO7HN2vQdbLNzuYsdfXKmKSDjvbxYZgXrZKYi3zwZ93LO48gFSeb8GI8D82R
	 EhY/yZCGZxX4MQFfBmqW6yg4xsMueh+HYuYa5BqcYPJvPpSpLJ7IYaBOGsTLpyKT5g
	 LoL/LSgL3rEJTAgvjmZ7mesiYDJYAjD4rYt/wWjClymSp4A+CCut6gGoYaAek3nX6W
	 nR3M16ztR6PgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E821C369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419579364.27918.11699029313558285463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69353319a14662b67db4569689259a1ccbb27b5500180b7c9045c5b4ffe30848
Date: Wed, 09 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744195793
