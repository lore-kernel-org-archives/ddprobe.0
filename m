Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60A2A2A
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E005C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668304854;
	bh=1JxZS8NnUkaUeIOHgs5zNS8jCQnZHFuD5hYL8G5EGKU=;
	h=To:Subject:From:Date:From;
	b=Sg94fJikGmlSRk7nIItLLUP9YsKdlzf7nwKF0k38JChfFFeV3pBxdeuTNFJVC4VPg
	 vDMrIqtag4X6kRDOKwvchqJwMOamnY7IqLZW8vRZqkTYZq+6fQjnkr1MuiZUw+z5AG
	 1kntuCaO3iZTdaQx+gPWgmrLzsCkmZGNQ2Mv7SlrSEO6XctmQJ6xYDmJ+sMOMpwvfy
	 Id9JN9/B64GCFOhqHaoS3efnrxVWQuQOlZoKo97H3CiI/WY9trRUfQomRkHYaTdnfn
	 G+yeGsXnIa3IAnNZiArIxBy5Y3/5ef4u2vhg+fwA/G4Lr+xOiT/RfQj00QVqmXOBMR
	 wzASfTUV07kCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDDBC4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166830485437.27238.12202611967418121319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a83aa586ae8f1d8c8ccdb1b8607c04b0b48b1f839c7324d2d9f7a78ec8795e
Date: Sun, 13 Nov 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668304854
