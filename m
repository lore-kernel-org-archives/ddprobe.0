Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712B4FC11
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720986623; cv=none; b=uZQAxiB1lo6Kk5wImVXaYqsYGH1EDYD1afWGEMXWXcJAOdYDOwXRRNuu8ULXxqNNtP15uZ3VMFjCpWzDl8zt4mZPRxdL43Hg/7iqy5HqVqQkkjYcR0tbdKEQhdddafVT3SGp5c+XQF4pBxk00mhtfzrwCy8yWfnPI5XoqcvOiws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720986623; c=relaxed/simple;
	bh=ohAwzTmO4NRRiBrigCojd/sqe5vADtIMkbsHSZhKDJQ=;
	h=To:Subject:From:Message-Id:Date; b=mpGgz+h2IaG7Xum++lW8zWHaA9U4pzVeu9u8CWQtg2cGrMwKkVKjks27VExhaYyfFsccvtNy8TvrXfg8ajE2ptfCzxPKUuvegp5H5kc+AMEM8nztuPY3yEbinOmkRDJuC6hFbtEHKXNQM5EJEgR1F+P0iLJ+dw6PvIPjAj4Cm44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4ee2qcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4ee2qcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE06C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720986622;
	bh=ohAwzTmO4NRRiBrigCojd/sqe5vADtIMkbsHSZhKDJQ=;
	h=To:Subject:From:Date:From;
	b=X4ee2qcPmPV6++yfAiMwCjIH/BL2JmaQtGWj9z6P775UvSuUBPJrnq7D+xhMQ1MGI
	 8uPKKLH9XdVUr2hBWRiE5O6/Cm5nOF/MupJXoYaK0/OX5AXXcrkbS2QDRnE5WeUPWl
	 I/QnCYRW4lL83EatOAvNFSCXr00P0UyErvYNrQ7BMTOtdstvBhGqP0Bzl/d7OJwedx
	 FeSJAqy5qwJ+sROSneE/rMbMsveoL+rGgWMwNsfZXQSf1HgwFGEH14daxWEzP9jM11
	 CGPXyu6Ru/T/rxLHFccQvX8Fo25qeicndy9xy2LpiJUZ50wL1ANi68uXcQ1VAchvWB
	 WHehi8GTn6EVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D6FC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098662280.8692.5826849385842691075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e04958ebae65ecbe47ac4a741a3f94f0d280d2804dc5d79db7741a7ed9b36b
Date: Sun, 14 Jul 2024 19:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720986622
