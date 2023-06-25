Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5AD8F5B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 21:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 093B1C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 21:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687726989;
	bh=o5nD1xT/Jx6tArtXCrjI8o7LNXgO/uO8JA/QIASxc1o=;
	h=To:Subject:From:Date:From;
	b=l4u6GlcZUDuwH8Km3sBki8upDjM9+nAkmUsQC4viUiLJC6iblJtln4KJg1CWkhArS
	 qxbkcpOZSfyDDMO1WVnpa3vTkGWh8/mGZQMvbxaszxGOvw4KewfrdRwqQelT880mOb
	 yJEMOLR7YX5s8ZoGyv9J9E1aJcxtiYoKc4G5NoVziHKOWpolA5TTg53D4zdOLYEDzR
	 iHtNuEl9uRH28Pe3vOpGwIn9IqvI8aUwZtMrhA00m8OinxWBgjURpkYMFB97AgnQuF
	 2gr8Tke9XYneaIHLJrJ32EUsGGh5j54OOUW1EgxtER8VZAtPVHS7GIPhD7xRnS5DtJ
	 1D3TOxWSCXnPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D88BFEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 21:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168772698887.4926.5989176459429034102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f824b77843a6d8cf9aed8d3bf22f7da25179954d4f6af96da3bf8a140059b7a
Date: Sun, 25 Jun 2023 21:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687726988
