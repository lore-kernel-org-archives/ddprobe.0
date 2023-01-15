Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDE67E4
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97922C433F0
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673749887;
	bh=38VA6Moq9gUw+oE6qaF0O9OrYvLGJWZJXU1iABhsiAQ=;
	h=To:Subject:From:Date:From;
	b=Zd1lxQK96DbMxtQumVXZNwsF7XoA96ML+6jVDyzdO5gsF0nF91PT1QHT7lrIGpS9v
	 iUdYCuwQNf0LmdkMIT3ZomfbrYXP0T5IKTQzubRm3d8FDXn77t1vd7F9IaDZvQAgQW
	 JLW7oSJ0OamfgAXsagbWNIbbo53mlQpxdljTKz/ln/3poubpiahGvDAWnK2ZLeRNvc
	 6RZjLnnaB78XYV/Dg67+w4I9aWAnPsk0TYq9em5/d0LP9i7eJi0kIs8EVxwjCLPkgX
	 ObCu6adINEkPekPHPwD+ETgDWb/Pl6qtXhWOt1DOXTxfhZfdfBUFLvA3uKX1j3GAVy
	 rqgTA5eq3kotA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79DF6C6379F
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167374988747.1554.4637226597366368612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b39031d9181a22623aa1ade2df47f2c6aa7c3c66f125c2af4015d92ec98965
Date: Sun, 15 Jan 2023 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673749887
