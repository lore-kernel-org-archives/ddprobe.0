Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5965173
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750ECC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662429053;
	bh=1Q2Z19ca9iooafkkckzauxQf8d+nLDmQYv/m1DCKEdc=;
	h=To:Subject:From:Date:From;
	b=pLs1k8HdHF4Bdl6OVnhQ4TsN3NAJBe7IuqleUzkEjH3k+dSrj22g13iXmzdQiyjGa
	 rMnmkJtOGpegERvI/S+idt6D6mxd4Cvwosx8c3inK3uzNc7SugNjzGqQKYov2ZYhgB
	 SQMuzQDOh56WmhHZdD8paevCZ4nmcTWf+GAHprOpt8jczQr6alfYOYdmY2DXXq/CpB
	 jqBui2FOyy2sKJjB8L26IKqfRmXvqEawE9OzlPmMcjZRM/G7UQpTWua64R8fjNYdx9
	 e6hGBHSPMLmk8Hsn578WuhWzArm6A1W1CNgBdw2iaFb21fw3L3pM+yWWIWdeJYQa/L
	 tVjba52uL/88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C4BECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242905334.28161.7149772310138365395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f2d92b12452f6f5ec2a7b1ec4ac89021a4472b91f05faf07aab0e438b495a7
Date: Tue, 06 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662429053
