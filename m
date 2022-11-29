Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5AB808
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7553EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669747254;
	bh=0Mm/Zzjk1spcqxBcR0I/DFFrfyDvJ/iNSq3jdxgEMAg=;
	h=To:Subject:From:Date:From;
	b=cRtDS+yLv/QhQjZjB4ype3xJseMmnraU0h5j4fGilyms5VqXHaXCN9sBxkK2PMQbw
	 Z/FQcRPQCxBm9YxK4IyrzdUB9o0td0AZgxY9CY805S2IAPZByJoIaHoDR2aGpu4hzI
	 VwZvWytE7IUnn2UCvl2sWGEISCF5PytOVYOz9T6fgCjouVlY2k4jqg8F0meYHJTPK1
	 8UK2PiZLLf+anpgohvyXpsmqIRRyezq7FwOF9Dioj5iX34tJVnCZ7EfS8QoI5QeCc6
	 j0uRqqEr7QF2NURWRWIPsAglq3GT0vNwHmkqfS6+avxxxqYZcac9w/ytQbyILO/mRW
	 gti2AjVhW8owg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A065C433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166974725434.5245.11967117842476790287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e143370cdd62847df74d1d5f1633b59198fae3d7efcb2b22e613f3741b8c75cb
Date: Tue, 29 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669747254
