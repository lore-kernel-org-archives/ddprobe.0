Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA8B806
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5BC3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683938765;
	bh=9ME41JCe+THgcKXecineUFQ4Do/wfayty+eRcy0a5o4=;
	h=To:Subject:From:Date:From;
	b=tT1sMkeFPqZ7HregSzF+uT63Au6aKn0mWsHmhdsplsgUsw788HtT4d7t5gHUog9Of
	 6GIxjQYMGeML2axGykxlr87vqPl7XBI9PnoFS3gjJMtMmL1Udr2573FKaGWqY40IvM
	 uvFK5y4CiGb6SV8USrjhQFzr7A1xiJhFWELcBsH3+vn93Vl6YNuIFlXCp1fVMCWZtl
	 eHYEZFxTJ/7G0kscTnvnJdkHiSK+Yf3DVyYZJ9BJ9yfD8QfF4WFiM+PgK+DIjqI7UR
	 XqrHpK11J4/xs7tsJ3NMT11bJGk2JxLJnotbJh5RStOLdBvG7Td0VgV24Zwiui7x0S
	 4OQn4WlkPy2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D8CC77B7C
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 00:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168393876579.11251.6077390018708764313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b782daffb81b5cd7a615a5241f9f7fe69522ed55f368df323d1fa27545bedabe
Date: Sat, 13 May 2023 00:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683938765
