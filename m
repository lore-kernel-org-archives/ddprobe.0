Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59567C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79242C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661657452;
	bh=FAwklOGfEF7K9675rxVrbImC8NVbBToDlSkpa1ZmHJg=;
	h=To:Subject:From:Date:From;
	b=Wpw4EHWNgUppQXxn/BXLVlqmT7CfQ6Oo+lZ2zX/pJHbiGnxMLMleH5wP4HKDxkFj8
	 t3gVudA4pQSjvic6dQu2ecZxnw6xCbdSDjoovZg7xezGoWT47/o4lsfHT0UUPD//eB
	 xP3T94qMYT1LcKb74b9Tk+C0AZheV7qqsjgo4bIQYosyk5LeC3DVeDT/194GpzW7B+
	 vwDqbbbHkriiZbzmQ38rQ8OPydyB2q4EVt1pG/qGAE0wgncbVcuKESAiz6fuFfGBaV
	 0tDzLtUP4VYtZkhunine9fOon2FjyKrPFy3k20c0yE41QlaPlsBIKrXoJvL5/G2nZW
	 HjOMFZQvbwr5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6030EC0502A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165745236.26220.10041962960067205000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc09c51fe3db46ec71017cb7c0e3e546cc55b56ba48c1d90fc1bf18f96ed54b3
Date: Sun, 28 Aug 2022 03:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661657452
