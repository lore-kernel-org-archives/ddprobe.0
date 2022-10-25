Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F62800
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D2B9C433B5
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666667453;
	bh=HOVdnd26sFz7BdGgBexPpsvklpwlfJSXcAbZOYs1ZHk=;
	h=To:Subject:From:Date:From;
	b=bU0Or59is2UxVYNoJ+R1WK57z+iSO5o7CjhamIAhQ7Oo5rWrJD6xrJLrtwBc07TQb
	 eD44NfctRqqETt3NXbH9a8qwLxTZiqvVraLqzn7jrOCFYyPvh0/jZfcJktJk62jnx+
	 aGRENX9GAq5e79dFD71VcXQvWqFRTDk9XVeKix+WE/ViNNmQ4U2B5qCV+c+OwpofsS
	 a8hjZwXlsxienI9d7wyaoDXPpfkJLx71HVQqfzLeAY3xdIFE++KnessE3sTrPzX4ZP
	 US9P4LbG566kzk8oGW+ikxoX9WkELZbpfK4H7ayjhlV9/JDhtxrV5oXp5gWEt1yx5H
	 IZQHDKRzpigkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A71C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166666745333.548.844515300603601575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e950ee13843aaf3ea072651072f99d0824558cc26fa2b6e422482883b2557c1
Date: Tue, 25 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666667453
