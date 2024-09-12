Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0D71A42BF
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726143953; cv=none; b=hxefcDVg3sO43he4v5X7wrQqfNyvxxJGq9W0xgowsF1oTj7g3LU3CbFByuM+lqePOzE9er4YxDWO4qgHLy1hEZ40U9hmgy+OhnCEthFpbAkFv2oNnCwJ65xGbfXoHiJZ8U9+DfRppQPM1QcFRlTYDrkkMb3da7hE4YOlfyIMmwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726143953; c=relaxed/simple;
	bh=V0qGfPk13SpEQq0bTcQNUF7sQ4gi5w+QWRhes0FxtNM=;
	h=To:Subject:From:Message-Id:Date; b=aQ9kssSZ/ShYb0vEmR7LmMj/0kfZrH5NnbeUEa+l5RHGhpc2o01kumKD902TSUFCdFpuf0LUS+9GcqGxfsyMiH8oLEwMA5xxpIgTO0Fg0UQ2fJToOQ7OclfXaZLTDOy+6C73mAEU8STHRkzHJXo0oPG9f1Ufcbxr41+anQG5Q08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQb77yNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQb77yNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80F4C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726143953;
	bh=V0qGfPk13SpEQq0bTcQNUF7sQ4gi5w+QWRhes0FxtNM=;
	h=To:Subject:From:Date:From;
	b=vQb77yNwPl1lnL4tPsqOmyIzCpkQnES8dqx9yWxfxbUr8nnXGvdery42UHBnu8fme
	 Rg4rxjq7H94HjSdOAJM9HJGLnw+5M86a/8H/IM4Lo/rAMb4rTGE8WQvV0iV+OsU9Hi
	 5J9uwUi+7wqL7azTX5GzikrfQIUpglXKaYf5NJgd2mMLeNQzXnEPWzD2hBR6fvoHL5
	 siHumnPRvsZyOtJotPV56gDLKphivDjAa9vexUxgUoFJbq/+/cNmDHvwuvQkd2lGLA
	 cVhOQqdbwZ5Y7Xm6EdxMU5fXV/3wbY6KZIw11I3Jn0qNrKAS7RyDO2jkmfNi8mqisu
	 r76F2HXGtGCIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E44EEB59D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172614395360.792.53879572389216442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4020aab89f500a07ad231d40984eabf53063b686214aa8dc4cac69bcac11af33
Date: Thu, 12 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726143953
