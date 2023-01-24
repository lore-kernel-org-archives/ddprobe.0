Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D354EDD
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6952C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674550385;
	bh=mev9wBKtF1mJedmt4xjkpPzEX0z4o6Plwjyvz/MQntM=;
	h=To:Subject:From:Date:From;
	b=j3Bi45aZXKQdKwlK/A1oTQUJHTgLmZ3hHleUiaILq/ItOGGIeYv1NipLizm5BDUcl
	 fxR7Cg9W1Zql730u+ZKIbtB1vG7klQAP0VYPDXcJtxUOUS5JxN9Gig2DthSuzjdLYy
	 qrUfiV9sJ02uYtd6iOs942n8SaiN6s3i0p7LQMXkFvT16JUplNxSgNRey3TemaJ0I0
	 qYLTO76yOjoEI/t2DX07X2nVRxtXs2J05WiEGu/EDkdDnfMyK4O9QMNiJVDKZIVg49
	 x7lOBv0kPVRbfp/kb89ohJs8PRQ+yJCeLsmGOr707LE/LVow0tekjC2FIh1oA3dZ1S
	 ZGqaI6Vg8cvVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA66AC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167455038575.21369.17204144155298689170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce43b2c769df9d05dc0521e2800001885aaac90e0809703479fff67829ac01e
Date: Tue, 24 Jan 2023 08:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674550385
