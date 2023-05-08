Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E25A154A5
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 08:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10FAC433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 08:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683533885;
	bh=1M+8pkLJWGc93itbxSenh7XTW0AfhactTKk+6cKberY=;
	h=To:Subject:From:Date:From;
	b=lr786UQMswS5dlq/nH6HimAlsoAI80b26s2OEQHnfQBe2nbJdCFgHUwY2lPGa3M/B
	 Cw1scKt9vyPEtMn8MDp92SHsVaAlgF9Gl8U2wh9OvXr5q2J9EtuSB57hb54o5gCc+W
	 h/qHRHzcTVeQqzbocOm27tsJI9LgEcoq2UhrzInsoCBPhD72ezvq+q+7Jkgtl7FszL
	 72wjNsP6ugPaQnoiFs9zdt0/F7Y/R+46EIszHbzqyQhQXB1V0uGQG1GGTfiIeAzA2x
	 R0iPyCVgwWfWEPEM5kEgBRhJCTwIyjOr3xFMyMHRJGqjANPgJxnOCHp/FuLmjho9JC
	 7Kr5Jt6+qYlkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C2BC77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 08:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168353388576.32025.13271156496988547891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706973adc01e5f615b07c5673cf807d9e040a064909ec5585b916da1a39e7def
Date: Mon, 08 May 2023 08:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683533885
