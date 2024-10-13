Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373BA77104
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728801954; cv=none; b=taGqZCI0t+Z5vIOeySx+schGgY3U5I2inxglC5sWPIk2V3KMvg4NAFLJdS0KOcLP2V+sO5WhPJFd2SOl4hxcQUv57VEYtIDtvhD2HelQhS7Cr2EujrxuWmBqiVilZ7qcLhujGJDuMRJFGpgA83jMlfJ1rV/iftJ+Z0+47P4hspM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728801954; c=relaxed/simple;
	bh=op8clV3JtNbqEUp10S/mucYQn/7E9WDMcZcxaQjH0Eo=;
	h=To:Subject:From:Message-Id:Date; b=HDOZlh/pgPHmTG1iFHh8k1ysmYdXU9srO+mr0o+YlLlX/VvfoMEy7k0n1VQGKFWGMgYfxa8npMP9GrfrNvsWsw1iZbtR+Y0FaPLpBW1gayukR3t/FC/SWZPmutOtOL/ktWrLfYM0VS3eHhCjn5sS7gn7j8V4yxLPUcOsesRy/FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J293HY0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J293HY0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C57C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728801953;
	bh=op8clV3JtNbqEUp10S/mucYQn/7E9WDMcZcxaQjH0Eo=;
	h=To:Subject:From:Date:From;
	b=J293HY0Iqks7PgjwWiaX4LUN5eQSwNc7qTj4Cm3O0F2MmK0Ky+I5CPQplUxZqNSGx
	 Yx/UeP3kNhJFb65ceQm//y/1RpW5GEl3HN6x5T3ALlUEPZViHeBy0GQ05xxA8WpiNI
	 Y9UOmuAg3rZ9EqES7W+K4TwxqR53/QHu9jCpqw+jcxdHEgpy4hTXM+D7xRq6D2rAdr
	 E5AzHXknAiWJlavPBCMJpt3xBD9xq/9bSiCj3GIX+W5U7oBgxT0NcQOtBBsHhF80Gt
	 DSaG9/ZrGbz/axJirv/fyp7IPSm5LD7lP7aW+vLvno7+ppoyxkB1WR3FQEzMtjNVN8
	 VtuBtP+hUOY9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99597CF2591
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880195358.20451.13767001845490571982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f05bd80af25ebf0d28803b5a48892face5564a33afcd641d6266c078d41524
Date: Sun, 13 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728801953
