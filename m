Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45188379
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 04:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F61C433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 04:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682051225;
	bh=LSzE8V+cVzMOAnGTcmg3CFSy24zdVTeL/DNTbH7zNYg=;
	h=To:Subject:From:Date:From;
	b=E0/BgufudvSe8yXYzwm/8SHHAssLKPVYJ6D1uZ3rw1oev6qGe0yqIKlCciUrlcN06
	 m8/w525Z5uetgvKdNzLhcLvinvoii4abZb3tCpWS8oiwujAj9T+4u/YiS+yK3iFkq3
	 TQX1OfU+3e1TF11mOXtgBxDy745qsW1W2aM040pggTDgNINnnnaNFYWGjimxFa9vJp
	 eN79ScabIAv39bhcIHtOBWlUc5dEw29JS+5fnMlYVPdL/MWEo9BodL+V1nJlDdEkg2
	 5ov3BHcW6iCAa77Z5fNc+6NLIxW6gAtKu+8lga4MbC+36qI6nwYn2ic9xfnproyAHp
	 ZK1mv06/G+4sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C525EC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 04:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168205122577.16535.2255181664237885201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a77e24b45553991078e42cc2f7cb55a80514d343a2632bc138422fe259cdca
Date: Fri, 21 Apr 2023 04:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682051225
