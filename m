Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81847E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A975C433D7
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662718853;
	bh=SCwEMaC/fbOBMeaTlzLAt4N43VATD4ajGiEW/kdasVM=;
	h=To:Subject:From:Date:From;
	b=KnZ3mKih/++BUMplN+FYHIIbyf6pVW1lHuB10CFG2gfnCEIA0lDShp4FCSRZ+uNGy
	 Uhnv7YDWuFSliR9/zLrXsqdkoT8OwY/HrJkgB20ZfNQkNP29yJtxJnXhhb9Lrvw9bB
	 obe9duy9e8iqy4RGPC14ngxutAgwXrvy73/CqXwQUexXltM8CIf74OTmQqQLPT4nHY
	 Bc+Mgzv3F6BYJbADJOri8Gg4TWliGLUiavDVSoQWZ++65FH+k451gioJ9DmQE7ekDX
	 sNFt3+pt190dXu3KvvBn3TqnVpuna8yoZE84JIP13FuVNLzuxltN8kg+c3X9qJw4dD
	 kdWBDdeUyeuqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A79C6FA82
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166271885333.20690.17354718201163399380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b72ea3b0581a21b21aac3cbf7dd7f8f0e7b9f5fc074f026eaa70ddfe7579d3
Date: Fri, 09 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662718853
