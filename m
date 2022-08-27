Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4B5442A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4D1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661629852;
	bh=NR3GNv0vjKcl4EdLfUWeSKGmuP8KdaNpr81SvKwFSE8=;
	h=To:Subject:From:Date:From;
	b=WD6Vn54dkCkSZzhJNCf0KheRErHT0fmMBCHTah8UHeQAm6uFDb4ocBI+spOZxxZ1D
	 r7mi9VXX1Nhr6AU0j6oSpSeNB4LG3pa+r39r2m2H8izZ8NrFZ7xCrnGxX6TkkXRMeV
	 F39jEPxAHDYbgmyCrgCbOPz4rhndbc4jy+EPjchpugG2jfh0v9c9CBI1bItO7WViQD
	 4WdNa0BJxwo2Job+UV7WGl44W+0e0MCbubveUXHQMR5cekVJ0dafQjNFE/WA2ON3a2
	 Se2OB9DHFSrXpHyEQkswArH0kPyJwXA2qNkfrbBr2VsA29235IZn6LQQde77oXkOPO
	 U3hA+W0Csi7eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF19ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162985233.22669.6994258452852050338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24798d5f32e1d9b1fc76348fb7c2c0de577ae5618e0ea963de2dc59114d5256b
Date: Sat, 27 Aug 2022 19:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661629852
