Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C661A601
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E81DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667259654;
	bh=6DvnrAn5eF0ac/Usv5XKrwESjdff7J5lVDKDKIlMmJY=;
	h=To:Subject:From:Date:From;
	b=XnL1qNckaRtCByzu8J8poR/0yXXKn2gyBC3NLaaaJqtqJx7O28+AB7/hmZ4+2/zRA
	 l8WW0VdImfsBqa5C9pU1PTwsY9FbWtsT65sgmbdsTupFR6xzlfwBq50JVqcBAJpQGY
	 uj4C6FMneZDTSZ53joP9mEPgVH1ckyKJcZVd7Kew7mc9HCf4sUBNWiBY775NpsFo8x
	 Kt0U3rTRkpZEgGlJOAjwH/IVsa70MA5Jzg+kfIpoYeimXjqObbErQ+H8DKBkLN6/L2
	 QafUkhlBPQc6aP0wzIqyUshM+9wdQDE3roHzy/rPYLlPzmEAlPR81gE22ZYfcjCP2Z
	 kD5g8eQXXc6xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59753ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166725965435.10232.10341428377491366031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f983b4df13224233961a35d1197ebf91b79a256fcfd98bd2bb31af98aa8e19
Date: Mon, 31 Oct 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667259654
