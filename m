Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B2F10F3
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D64C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665215453;
	bh=JlZeFl148kUmRgx8qk9LaD1Mjy1Cg5w1fJqcKoA/3wo=;
	h=To:Subject:From:Date:From;
	b=GeW+AMNQpE3Rdvwmybqj+ZvdRx1hr47C2KnvsD6C8XID0gSLlKw9VFcm6JI8aPcy5
	 6ZnVdbTwjNlz+B+ESMd4D1VRs1+xp42a0PAKPiY2MUzdaqE+zEzQFPpTBJSfZYLJo2
	 I07JrPktUjsLklpybeId1PAspm1Fs3ABv/DLQlTY0pBUOUgls4zLe1FYnBkKBGVZw5
	 MOjscmCuomvCMwlbyj+1vUvGPmkoNl+jFKQ7H6ZpJG1zEFgexoa90CA9GaGzCC6+0I
	 RSz6iD7DsL1Ovpnrk11E3f5MwQuxzkv3o9H/K12unSX4ynIbEbi9n9HqUdgt64T8cB
	 QLIO8BbwV1ikA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5712BC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521545333.5979.11792668433645358784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f794c81d4ca5656cd808e2362073e055e8177c9bc0d19a11d4e9c1291d9e6ad0
Date: Sat, 08 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665215453
