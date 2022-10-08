Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01F12F22
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B44C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665261053;
	bh=Em/U0g3YnJOga49eu0yJjcOUN5sSlS3EZZQ0NMikHQE=;
	h=To:Subject:From:Date:From;
	b=Wn3j+6fN425TDqNxIvyD8Sryqytqnmo6LBi7iIZDtn79UoIjLdp4sLXJOy7vWrtA2
	 VkE1rGVGHsjyKmbfHB6F/KCrlwiMeXEsIxiCHxvshzZF8r40ccs9PlS17hoqbhS3AS
	 zoLGhyBih5UJNUsPeRkeg6FgKU9hFLPXYWsNQWg/ksIsNx7B4JQ/zl7zhM98c7xAVP
	 Cgz4oSAyX2yz+IlUKruGJOGK6vM9uwVFn1VAHe6GWK+bbwT1DAXzbHj5HC+GwCC5kz
	 wCF+/7NuoiQFzdNpcjYt4T2FAJel/gsC0xRu143g/WaUHZExkMamvrdjHnv/Bm4rLv
	 QVwD2dhfwYRTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AB7C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166526105333.11059.2530415751002677979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bedea762d482ecfe40648d0dcee56677b4a6e3c257c49ed7f35aca4bb198c796
Date: Sat, 08 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665261053
