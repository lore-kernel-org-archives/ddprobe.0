Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D874F80A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3EAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673676687;
	bh=SHpKG9hdw8JQZzsE3fV1Y5PwylAPq06kX8zACREK8+c=;
	h=To:Subject:From:Date:From;
	b=pC4c/gVuPkI1BxtwifrvVJKlWAUNHkOvzEMhsIWwapxWccD1uFwgfhIHZb45+n7Vs
	 dcCG6igHgDDauo1FscXYHHrE9UDDD1BtCN2+bF5EBFhI+oZy6VSXlmlIysv4ywFQ++
	 gl2/CESmBYA4BqIXw4tNoDFP7RxpoHl5o4NQSC4S/DO3zjZ36yArRc5Lyj1tsailYc
	 v/jEpEnzTfJBDHDnWUuw6cCxeCRmDdafiyO2QdmeTnCGOwjooYH5YSKOKoLAmVdVM7
	 XSptk6nORdF5yRUlfLOeL4FQIguMpn5xcQPFT8QOKK0Xy40oe87u5Ii9dAlasZELiw
	 hKBUsj26jFJ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF0BC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367668738.22130.10031063607339791720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733d3296961bf3f39db4347eb9bb187c5e79aef79dd25db11173e47389a27b49
Date: Sat, 14 Jan 2023 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673676687
