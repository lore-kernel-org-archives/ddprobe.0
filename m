Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4DF7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6896C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686703028;
	bh=vaC42j9S2KLzLHrW4NJqglULZC43wdBZoKkS7ue78c8=;
	h=To:Subject:From:Date:From;
	b=nvguHDM4iWs3K4AErqO1GPIcTrQQAHnHUeUMhvtwuAVwMQaU8/HiW2OWVl/B7vymw
	 5uTKxFoGC/xV8uF+JdIe+tTQPMOr8U9NiT1OdX86zenyjWeU4kZADMamlleNEJ82sA
	 FHLhfYw7jkzM3BJUVHP1pYsp0o9jyGKCcI3L7WpjY++Ns0E4J3uXqVlJQ6g5NZS+mi
	 /wHI7tNcrjKQDgQXcaPiLRv7lj4EzdAd9QpJZ2EOg69Qbiu/zuL+V0Fd86QkRM3Z4G
	 e3EPgpcqZc90Mu75VN/thsRunj4ue6hnzHQEAdZXAR0gzlOJVKbss+01H7fXthd2Ue
	 oHBfWXKkY9CCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB09EEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168670302869.8144.1965797635714179756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb30323e8e653243c8f35f8492feda62c3683762001af46439159724475f88ef
Date: Wed, 14 Jun 2023 00:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686703028
