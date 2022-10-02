Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD48015AD
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DA2C433D7
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664675453;
	bh=T2pmV2Z6H38l4qx3/HRAARXtl2kjFaW9WDTi14dYRTg=;
	h=To:Subject:From:Date:From;
	b=CHFTilEL9pYbodoilmhxJLYp33Ga57aVjGKoAHtDqVpkpLzn8nVVyGAJ2S/OPGrjO
	 ILQs44O1rNI9lpGR41JSsCDJtlrHHP5P+hq/8752Yb5grh9FHviy8ZS6HCob+1c3Gn
	 M27xPH1c5qql8eAN6DyaMiDiAOyGgvHRIMCzxctxoS+WEwnYfVmKCDd8IARAd8haq1
	 Baef6gyBVnnrHzfAvzZ9VjLiobQBWxI9aW9Zei05j/evXHvOUPjo2XvVtTLE2GFD0t
	 mbqyvmmSf28jM/1iSkOCSiTGJRChfkNbwcd0CvB/G4SqVPLW4ccOlvAZyLcCEaV8yt
	 RZ3RGQO3jkpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560FBC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166467545331.9437.10373438978157884932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720140d28570e196176bda316168e05d2b0f071024b9803bcd4a4d2ce4b7481d
Date: Sun, 02 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664675453
