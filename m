Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7333D63
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6791DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663937453;
	bh=MqEAD1fSlF9fd8mH5zPTeEj5KZASXwYACAueI0jtV0E=;
	h=To:Subject:From:Date:From;
	b=MQuupxqMN/ekPebAFEhBVdHSovkmX+qcXTnD1WNT+zplOtO42tDyJYNgulYRo9Zad
	 nD9yg2AAf6Fdpa20lVO0J0LFbm14Ytk/MEM25HFa7Ho2ZDssYdBSs9yslKBbuj2yYW
	 SNadjSN5cngPKYm7v3+ngbzo4UNUxDIKI33yES9IbA6itlnPYU+qw4inFXnUsFP5CB
	 2Vsd3jw56qSKy/pwoCF8zJIVNY+7U6NO55CPaZg3NmGg3SLJoPL2B9lrwykzVJcyz7
	 HTmpwAHIGf4kL4dYmpUZDqlWS8h/Tr60FAgmE3mIdshCoUJ+rC71x+XBNt5FlfsvzR
	 /2v9C0Rg4sZbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FCA4ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393745331.1485.7399110423784323609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffadc5cc68999415792fb83ec12a0f0c9b1aba0d28481cf1cab1bea7a13890d
Date: Fri, 23 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663937453
