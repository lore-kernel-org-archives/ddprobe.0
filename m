Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F29D168AB
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 12:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBSJ/fFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE29C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 12:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696681628;
	bh=F57dhp+q1CcylDJsgZbTrkf6Erqph4JQFwd+vpY8C2A=;
	h=To:Subject:From:Date:From;
	b=NBSJ/fFU7NMREmCjAZrpM4DOwrdrcIOXU24HgVcwgeYSOjNMxODbifOuQXd5GiYa7
	 /crXxW2l52b9TsamZ8oSUBsj8WORgkU5yWtWYh+8OzgZMt4CnNl8r70MpM43cK44mj
	 5JJRmvVJgG84k2jSGXTy4qe8GPpaaGULcLUEQc6GchEGiz814IVd6tyJ9adlOYjOCB
	 ge3OCBGmnwlsrsZFqVAYiv/4ibs8xoSNBXyXWVFvfu8vduedUo+06gu0p+QU9gM7EW
	 EXij/F1sAhrVXxsoXfuy8dQynrvuapVSwp9dNGHEF8AsE1a1QR6Qe3+Pbg8hG+Chb8
	 WsGAJlUgA1LIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BBAE95A61
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 12:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169668162872.28791.16092069291217275180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7cb31aece538e0c3f19e3c6f26b09f0a77e143eeb9ba2939774b4d62d92a22a
Date: Sat, 07 Oct 2023 12:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696681628
