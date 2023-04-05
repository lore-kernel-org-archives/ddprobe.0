Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440657470
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8FBC4339B
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680714425;
	bh=LmoxgN9dQ9eqRZW9FCdkRgyC8cex3boyf4iKmigIDMg=;
	h=To:Subject:From:Date:From;
	b=NfvRpR24ReXe3c2qBLi+AO5lij/TH/bntTB+Jo3TpAHI0ywqzHgynmOBOvvxXRH4v
	 0YoRx79F0mIAsSKnXqwceJayLsaUVDMFABsIpsD3Uf6qi4KDrRwGxG7EkfW2CRacji
	 GNW12wIlT6BkPjGHlfSPj+8H6xgWIWBnDKtujco8pKmWVOglGBqHfAWk5GGAt92DlV
	 lomkX9m7MC5xeo9xStvJ6X1Y1lOg8PLuxPR6jztJVwVYhmmJ7EsdsUBbgtCheBCcCc
	 wLMuEA9hi4myN2AYO+VBNRv3nLHmxjp79LGzSmEAf+LyiRvLnaJIN12nfx/c97cf87
	 DrXyOvwwzcr4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10ADC7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168071442577.3925.14847069275889959138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db059ab395c7ce281c395fbf175ee86d6c0aa4673f11d012e631e2a6b68d81dd
Date: Wed, 05 Apr 2023 17:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680714425
