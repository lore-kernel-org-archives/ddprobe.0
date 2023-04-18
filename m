Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED7010F6
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 01:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E170DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 01:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681783145;
	bh=CwSfVIMCZS/hbbFOYYArAFa3LdTvang51g5XX5fFOtM=;
	h=To:Subject:From:Date:From;
	b=hDe/0AeF+VEokELwYyXqD+fU6V9Yw6Fq+3nbTREAemdcDRed3FAEAZ1mynOzgE0J+
	 lNbNb+LxdR2uoXUg8zXxiXXf2TM9dbrO3Nn8OaYEsAGvoYdrqFUeeDBHiiFnci354g
	 TYKBbCfvcZHVRQaOiau+N/+LMP+MAi4GehkDQlP/hfs3UtBQd1PvR1Ane26xAo1qdZ
	 MmxJApU2kqF+pIP/lEjshDHmApYjWaxO4TANHKCOY7V+NnNW0x2GkemG8XiXFyrqZ6
	 fRHxZNcNpULo6axFY6evT7lOROQOs9V48XhMoWtwA1p3XqlGxvmpf66wJOyYwdGGTS
	 N4pf1po529H+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C318FC77B72
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 01:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168178314578.19634.14994975928879743942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4063f232ff4fc01b531c99a9e54dabc59749e7b08648849547e9abfe10f523
Date: Tue, 18 Apr 2023 01:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681783145
