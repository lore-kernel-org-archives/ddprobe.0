Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC3615AC
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7XQykIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 798C7C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702181296;
	bh=LacGEedEBtMGo13RkvE7kuz5sCADnRDdMMELXJ3xIfg=;
	h=To:Subject:From:Date:From;
	b=J7XQykIfJI6X9faQZAeWu+kn9cMo41x2OAcQeZzhgdrI2vK5y7EewZ052XPKc+mTU
	 gKfdu/6WHafG9G9nf5SOzUHvWdRTjEIq6EkCSQP99KhB2Q/iwzmxh4aZJ26rJh+J/I
	 wsSwrfBLQ5mETlezMrONKj7U1Wt0lBFHSehPl5zvfnwCQpbEjT+CDpFbPiU4rZiEWz
	 DgpUXFwH1xd8utAbaIGd9D1eOkvlpv2ySUu4a8ula9P+k/AD2E3QLrh28cquTiwqcz
	 /OyeR/avpjBKj3PMLw/aHdtdzHp8fhK805M12E450wzvNGN8MDkE2Jwj7/YtH46icp
	 NqPjTqGcybOUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D21BC4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170218129637.13282.638094081661144416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c021fea75eeec0cf2bb6336f44ec41ff5be4190935f88d7b054283003a1acecc
Date: Sun, 10 Dec 2023 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702181296
