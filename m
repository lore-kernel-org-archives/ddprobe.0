Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E9A17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A83C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668820254;
	bh=nnbj7UrWDUrMmeJR3l1i0ipXtznu4JJxpCXrOjHA904=;
	h=To:Subject:From:Date:From;
	b=jR5rQ/ZOUn86u+OLjlpPGqAFxsZkd5XrEx7PstQD5lCqaJLrGpNJLwj8+7n6cTjTW
	 Yy7PapDGbmwGa7tvIzXEyU5Vq0vDnMYiFW7W2oUow8/K18rePtT/vkf7SJn1KUaeUZ
	 jiXl1dzgRtxwezkOyc4I44lRLVH9cfinTgmhFkxIvRGNQVy819aB/aP6XZ6FACtXl6
	 LehfKM89bymuw+83UJPGParMxPrVLp5ZcKjq3Ah5Co8o3WjQwhEwbAh3ilX79RD2pz
	 Vk7+yEAkeefG5PgGYIGN0/vSUdghzb8Rr2hFUslapLJejCKeryL7Sb+82bEYGPhix5
	 qu2V+xB2NX6yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508BFC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882025432.10350.14585306356113957791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ad256468475861d015785b3c1c809c6bbd88dfa7a2df1dc03dd0bc5f433d93
Date: Sat, 19 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668820254
