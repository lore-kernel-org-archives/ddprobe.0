Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479CFC143
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 18:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F0FC433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 18:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683310025;
	bh=RuMCMc8yBNT8XzwbdNiy0EQyfiOMhrVrp96I0hiPg4U=;
	h=To:Subject:From:Date:From;
	b=Vls/PYIj3/+WUVMlU/D8Q7yGg5gYMNfiBYWOtazSW9muJY6PBJvGEUxUYgm+qMzHG
	 KvlOiMBi1WiGCaH1JfzzU9FaJpQj29erKch45AOh4rVbB3IpmloUbcIIcFoLHeELBy
	 i6zzxDodLfZSLBrY/2DOi2kcrEvFp2h0xNOvbxaqU7Lhf9+dCkTvc0rNf3hpXel/i9
	 EHMnYd5BDwCY+UqD4an9cKg4qY93Obi8XSpIUMHzaOJS3ldy21vJBB56h6OzpoGqWA
	 qyuDaaIghhIRSKiFg2lV7dK+E0svVc6hCgGRC2ptCMB8IxE88WjwnBnOd572478LYv
	 3gyQRvXPgSL/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7502C77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 18:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168331002580.24068.6945955686645929709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afdd298c00ecad969cb19d6298ebcf27beb6926cb35e30b3026c4e76ed18871
Date: Fri, 05 May 2023 18:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683310025
