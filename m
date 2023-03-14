Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6FED2F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 23:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF5FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 23:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678836545;
	bh=1lPZe/UpvgdBk9sVAGPd507lEHHEhanRse5D07XOx30=;
	h=To:Subject:From:Date:From;
	b=q5phApEuXRVb4wL66WYTnMAWgL6h/pXLJ/eFJ5TqB28+ee2VNYhody4tjEBePaPeY
	 Kmbp7XmZ+HUOtYycEHqixuLppcqtkY39iE6fkGL0hPRBJeFRbB6XxapBrRgDt6slW+
	 hzklkUkzG6SF8rOyC1XEZc+kis+RKref0rfPsy5AZxAv67ZSpX11+LcOYbOObtBxXA
	 2zVJwGMNzHdRVQ4qOqQuj4msW1PAKh83ugoWcGjySql6y6+kPAKE5HFkEPpiyBL+d9
	 DCUPAbktFoVWel12Ol6sAshq59SNWBgmZNqOH+TpC7DuoP9a5w71a/DLC/wZ3KFzRa
	 JVFhX3ynaI4CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78A3C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 23:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167883654573.11962.14225670771156595212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b9c3c7ba05ed3da96030598204bf080c1039a66f27857c96efb2f21a8255a6
Date: Tue, 14 Mar 2023 23:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678836545
