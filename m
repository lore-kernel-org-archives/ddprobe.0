Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287505668
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ioy9k0mQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB87BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703666296;
	bh=mjXNV9yOSVZvT0b5yK/9cQgCDoI8r8qmKcTu6a1Ce+g=;
	h=To:Subject:From:Date:From;
	b=Ioy9k0mQfKpwckD0fkSVL8T4XldaojqZ8e2xacHzZ3gyw+eYOTv1/o3XOnwHohLE2
	 gYCUWj4NHD0YQmPiS9WYvpssCYQS1ryEXnl+LcVtMet6SZDkR/kMTn4IcacR3aNnXo
	 +6P8TEVyrCpn4sYpULwL26uGXUqiXzIEYhij40+NNla8u5Ctj83L6Sir28ohAbbfls
	 57SD0QPngw3W2EZrtJkO6wldwqHJ8+R6QiakJzBNUNXmZCraIIspRG2U5D7hDRSYVI
	 fd/IZzULHG/cKlsXe6MDgm8fFBsX9exg0VobTkzAwIwOl1tZGJlNok1Fn/iZjA0Gmj
	 awgnwvzsE1J2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B17DC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170366629646.12941.15381273119483062270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e364220a5582861b581b225a184da8bd62c5b53f6225b80cee2a199535092cd
Date: Wed, 27 Dec 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703666296
