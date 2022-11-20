Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A12442A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A513C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668987654;
	bh=erqNrLjFxuqKo3I4kzFwGRolIHd9U507UW+m9vQX1z4=;
	h=To:Subject:From:Date:From;
	b=HSciUn8MTR08XdGF+52PrOl2H/1q9Ow3K8wGME/hFT/PcM7xK99EJi+H1IhnohAcJ
	 5rpv6W6EABli/k+VCZxjSeVaurDMfIXoSjMm2INC06IsiBIjlGBjlJUjBegDhySl0o
	 dD8F/8oo+T/BOjQLZ8sIVmEb2T59GsWicafMWOi5gdjLUZdG/VfUfzo5sxtMCQGMtI
	 CjgehRIH5bNs4efpWWq+T9Z1ZDN4aCZfX4vAWS8Yq2ZjMKRQC4E0frsTwP9O5Gn3C6
	 hqVFmMuGan0qlZjqjzv7NgePed59PZd3Pro0cfkSGmWaUjstgZrERA9C9+llcTCXzm
	 8jaX4mljy6uxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E292C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898765434.775.6438399141503481544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826ec623eae73883d8d8fb945ffdead79afeedbf92aa20cea0722a13d6de3daa
Date: Sun, 20 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668987654
