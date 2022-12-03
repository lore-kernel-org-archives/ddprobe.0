Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9B91FB2
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DB0C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670046654;
	bh=qBTFZzlzAslM79MnY4EdxW/9c6YAmKkD492f29FA65I=;
	h=To:Subject:From:Date:From;
	b=YFpXiDCc6pOBPbHUGdsFqz4v+1u1CFIHhfLKQsR6dFrdC0Bi9lxo/2IEFdsz+SswH
	 KQpejJVtLK9Tl+LIe6IBzix1DvwV440f62HpKs/Skd/XQfd44q7nBgNGNMmAsKzBBv
	 Y/rmQLOHeuJW5AGtgOt6T3n+GTrXbqJfJxrIQKq0VwelFZ/DrZARfIJxIJfXpG4tZ+
	 fqTF99fLF7M7CLP6x8n1mMZXpKuN5RbA+rSs0/9W6gVycmZr8GS1cusGS4MTGofVjJ
	 0O2gl4yNTN0EI7Knx/q+cDa165N555nd7Cz7eyW0su3fyTErHfRsKrzr6HmORAKaML
	 Lwh35E1AuGLYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5931BC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167004665435.5554.17878595935707449824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48d94644cb97c0fc8251e51e02715a8a27e9dd0b2e48a1049a41e58358b46d8
Date: Sat, 03 Dec 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670046654
