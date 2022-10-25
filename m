Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B447B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71787C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666681853;
	bh=TPybbeWa3cOTX2DOJE8fGQLi9ap7bfSqXxONc1AO6QY=;
	h=To:Subject:From:Date:From;
	b=a8KnYC8CqSqu/nzmcs0yP6ZilrrOCwigS1BK0lPHBIQlTJ4ImbXRPe/A5ACJMmQMA
	 M7jvqnYigYVUKqLOMM7rKNK3gmzVxQFObBC35v0j34ZvVuTr6RXWkIBDKDqDlZz9mt
	 ZSDN3JumYQcYxzfT6oVmdNWfttV7BA2GHY5wOGc63Gh7p+ONuJKsTTJiKgfh0sYmeO
	 y2mqeEywdde0GLnyzYIC0ZvgO6sgavN6gsjdF7ItBOhXRQka27/fhLS80rftflOp1a
	 HMy5bglzEZlpwCuo+ow90pZPt8X8/FSqitFBVpLtY1cac9hO994TIYf8bui8VS9sSg
	 CsJ3JZ1Z0YZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A7BC38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166668185333.32717.7546765425556242240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b808242793ba9b59c330fa1a59553bebd44710a14c4e52a87f14b8fb7725b1
Date: Tue, 25 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666681853
