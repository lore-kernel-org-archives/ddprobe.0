Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB2CEDE
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 791BDC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663644053;
	bh=MMB7QWtNXhnF0owX+m8mVhZ6eNwt9F0yYVuwzlhHVZk=;
	h=To:Subject:From:Date:From;
	b=LczSWAs8rgdEoG6r3VOh5DJ3CK1TeUtUpM8XfiQTo59AsqZZ/1ALXU8YiE1lq4128
	 GUIe5IxJKMI8Oz0z2ji8Ct2oYwudHkXgobZ8GQaRmWcBlu89rBdwGuo+xZU3UMhFTF
	 fHArxPjxDI0F62BenzqJV9jEn9WuGVbJ3lw+jpp5hVLKkLfTUjbLo6Whafim0Y+4cI
	 9PcrPDAmU5xjkOtzdJlgccyP7/Ye1qbfm5Vzns+gcjdy5Em4bRjqbYhLjfxi72vO1H
	 ywi0S+gGdg5+w9BiJkysZPf04tvaYjrpp7ApzuGVTFkay8o6NpbygrE6Na7lmr5NIq
	 +2ic5xB0wUn6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA5CECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166364405338.29496.14102112579171995519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b18efa25aef754800382da9147880fc99338158ea346c1921800f51ce4ee0c8
Date: Tue, 20 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663644053
