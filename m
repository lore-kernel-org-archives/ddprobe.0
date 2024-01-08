Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26D5EA8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCjgM+c6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D6D3C433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704679696;
	bh=d6aTBaTH0OPG6rRyHld/PPEyn0dC0fRPPYvVO5nqhSE=;
	h=To:Subject:From:Date:From;
	b=UCjgM+c6c+5Jsu3iuIsrNTcyL+35tZTHjFIjpTlcv94UmO1DuGw5zQfkNaU3QsjoO
	 DT4QxLWLexkkOPGL6JbuUX8/iLYPhtJSdxXD2jdlmivst2zk4HcNHgZLuC5T7vihpX
	 4Yf8o1YQ6ZchUFAe/qYR+q0w3O5n3eE5lCYtWN1p26xz8PFMKBIV6CNR8LEB9xT5C/
	 yhZyw2hw0+WXJWbYAH1JplIdIINfFSXBS3mZLMypA8tZsxuMGKf1o6gPKDiW+m9dAi
	 Xlwk5xK379kOhiVMpZpyzrMH9dQk8U2VWhw3QMs4rujN4kuCrVvbFfZQU0H5Fujks7
	 v//ctlqZtIsQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7BFC47073
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170467969637.10248.15794915002843720928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aebd58242350c55fe147e206cfaf19d2fd03b63c8d479de1e408e9599b24a90b
Date: Mon, 08 Jan 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704679696
