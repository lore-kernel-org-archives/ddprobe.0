Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B18DA5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 01:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA28C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 01:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678496705;
	bh=ndpfaPSDFs7Adne/2zCF1BQCtpHZRkzCax7xlTt2hIY=;
	h=To:Subject:From:Date:From;
	b=LZT4WaP+ESAC2CcypsQEcT+NYJ3DwU0HHvi2kDO7Rk487HGyhFP5FLLHIqJ/SZD/g
	 AvjKXVVcsufsRTZYXOfNC7+bnNmFlMIgsLjNiERjZtxw+rJChiziVLwdml5BIsWLL2
	 pSCZRPegRX/pgEpn/NIG/KAmI7u8H9KQvqG3RFysfTAlsiQRQ+o01w9H4fzFbHdEAP
	 gSdW6eXWjMCSrNRPRYZ0u/GUguhr0PA93Zz05KXIIQ2ytQimDfdAJE5cNwB/8IsFiL
	 YHwv4sdtbsUFMS5JqUbIXTNwgQ0wysAtMPcIMnbLeBbH8+qVatWB1ZVlMvZq6iaxkA
	 pu/MX/bT8LZvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DBDC6FA99
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 01:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167849670572.14165.7509597265439806049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fbd9ec457aed923767fc5dc91b68a7f4ec7452c42828c0b2c31bab0ce26e36e
Date: Sat, 11 Mar 2023 01:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678496705
