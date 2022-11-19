Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F5036C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B32C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668874854;
	bh=GbZLdLPHBciBKYPhQ6Urqiycprgj0LCM9EGmjRXhVeE=;
	h=To:Subject:From:Date:From;
	b=Jw3zb+GI4Xy+KbGKtmV+4D5FOdF6TSwCgEWd/J3q+6H6I1ULJiCX1LwTXdwJ4AEwA
	 Qx3JcwC8R6sRnA9Vi+kcrL5zizEqb5mK3xxg4nElrFaRmQkZvj6XbtpeGYgfgrBj6D
	 NE+I4GNksgkL8v+kf4Qna08mR+LSVF9+6OWaPr6eYnthOKWh090cbaQGnFEctqxD4I
	 ZVHZOH5A/MlYbypxh5IjRdk52wZuJ589VgUlOlvUmYMHlGbYblnfz7kGa8No8TgiTD
	 AJ3HgE6mBROvC6Q8ScFOsiuwwsKDzzHwV/Qm3nwUrmTwoGXOTZ/CgDQPfGYuiJ+ryz
	 +rrgUO9c7y8Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A22C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887485433.7790.10856260429634744616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f7be8285cdda3e79964840c0356a7fa8e3beb8c28655f5e4a506c855782469
Date: Sat, 19 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668874854
