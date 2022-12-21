Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DE87E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D946C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671603087;
	bh=kcFWLt6K3//5+htZw4IpT/in0m+rTV+X+2Kq/D4eDh8=;
	h=To:Subject:From:Date:From;
	b=XiO9M88pXaa4z2qwd/AZGoXWiuPlzj5kJoyhaGa4A7tn19coyEJ2DS4emwgcYuN3+
	 j2/AA8/ojGGVAQ9Gt/HNq9rnX1WqjfTMNLFjWWjF1VmADjAfbF4FrllttGgFcg4TJC
	 MMVmBbK0CH/dP8C58I3vVtM5CwdN5kLLxg1V9q1QdpkiE8EjO0fcsys7Em4QGdpujW
	 C+6pwz5SMaJZnwbjBmuq8xPHR+utxjo2H0nuu0HQ7JR0cWXG9KIIS+urZ/VVBXs4K1
	 lqp3M55jzfxoL5HNlwgBYhx2YRIFDz4G2JQjDApPR36yG7ZHeK7uLGIDD80gftHJjk
	 cINVjmmqU8nTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78C5EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160308748.23308.16294195253070299411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01af9072dc9dc4da62138d2b1b9ea1dc9dec194357a8c318fb68a5e19e48f74e
Date: Wed, 21 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671603087
