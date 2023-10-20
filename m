Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152331D547
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8exN0ui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93FC9C433C9
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697806696;
	bh=fWa2B+Sr3LPQorBCa+XtdwhQc0QiTCUIr93XwZQ01qQ=;
	h=To:Subject:From:Date:From;
	b=k8exN0uiQ8faE0rZhjEAPR71v+bJTFxPDBbh81jE9d0+3lck2Vb2oIuVt9s3F7wlX
	 CiOBHOCO3ABmY3W9USaGyXyYSQsd39lHqhUEUvwFw8txHpBrSNDzxEMku4uuiWoIU9
	 A+EW07k3UkDAWlDiSA8GiioSctNwfCoMDJ/MqZzJrngFAf1eQuB614snFqVv2hOCqZ
	 HvWU9nFkTeJJtNCUW9o841YmftwrLDbzf1nLfLtu+HQJKOGZCfwvv+LfpK5KQmbF+j
	 mOw5OlBLpZST+fBNObuEn1677B6PJCEU8pZiGVldnE3k4dG5YMR5j9TadhunncciVt
	 lq3N2H0LIaimA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E967C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169780669644.21649.3062193700651270449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b647d3dfda0f93ae3eb4994f3a1e629fbc0a336d3bf721372d5ae3c4f668fab0
Date: Fri, 20 Oct 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697806696
