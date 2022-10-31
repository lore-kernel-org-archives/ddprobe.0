Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C018B7E
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1FCC433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667232054;
	bh=835qV1ikm+cppD2HMVUa5DYBEDjjcwc3iHnOo9gHr1I=;
	h=To:Subject:From:Date:From;
	b=IlmuxUCbIKz3BXKZjyYw8a7kweaLcMCux86V+4jsf38E5+KAsKTPvl1CdKWvJdnNM
	 5kvddyoCUObMKI5/nxrSjg5xs9XwKBIF1UzJ2lDsPcYLG6pU0Z5psU1vYWIP4bevqJ
	 OFS/tQqAtTI7CU0BE4xeN6RBjvOUcxgiFqMlmUQvcARNCwM58cHEhzsfiCk0ePZeWM
	 g8ZZKg8QsP+6bO0E4/WOyQCiVvGOqTYZ+3l5S8zMtJaUld9RBuLc/+lMoxcB+LfkNH
	 7qU1gZ2UpsZbcf07Ht1ZFEOj0RppPqWTsP3sefLPYjLekAhZo0LtA/rZVt/HSeUR9a
	 RUGPjxWCh9cZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AC5ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723205433.13529.6437985197923174469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239559b81ff9a9bde3fbf7494e6e04bbc23e2bf8a9cb82f99bef32fd1b8cf29a
Date: Mon, 31 Oct 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667232054
