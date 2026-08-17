Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5077523AE62
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786927834; cv=none; b=NMLtB4Lvtx43pvf43qP88uX78wihKUT8qD8MbWWjS9HXyhpKrA0gNuzP+ubqRoVia8qgDJUs7iwS8+FxnXUJcH8YkgurnrrAjkcOuwcdnG/oOl1fmKm40tES4v9F06n9g2/zZ/fdfqjpM69p/RfozUnRglkR1KO6A2yD3sNylWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786927834; c=relaxed/simple;
	bh=0F/dQrL/eTv8LiB5nLlTPJ5A8h6uiSZaJtxBEhHdiYA=;
	h=To:Subject:From:Message-Id:Date; b=g3KKEFkLvB8fuDRmWo6gRQ3IXHWTIEp5Thjvs3XAHrQVJsLimRKhUNsu2wcIrKoPO+6HcOcVkgyPtBZy+UoHPklmcD1QBZ10sh68xdrg7yWsDRuIRQ+Em8oSL+T7/E4u1PlR4DehwiU3Z9kfKp4v0F2aMH2YReoCt+FBkIsHdFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOJaNbj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOJaNbj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D841FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786927833;
	bh=0F/dQrL/eTv8LiB5nLlTPJ5A8h6uiSZaJtxBEhHdiYA=;
	h=To:Subject:From:Date:From;
	b=HOJaNbj2NuG7zUL+qQ5rKycFzT2bk+SoAGeflMsZTNni2r45CcavKdMkzGyeOpv5h
	 Ok0Q4t9fx4fIjQufWNKE3k8mTpPjuiNiC4/aefXg5BRi7kf8N4T5cAoWeeoi+LIkxm
	 YT1iO8Z0d9HO+HmKaKdLxlYnk8DqN2ng3YHIEyBK4GBho2AXN/Y3yr2kHB5JA148Io
	 QeB53AkwxJshuK85sGVBCXSm/eiROXGTf/Ett4J1fstX7xWfPBPDIo/+xkXp7wHhcZ
	 67dt9WI1gXagJEhWlMNDStd40BADiz/uRXEY53Q9KEMZSfwbQeMvP6A8q8sKB/rv6E
	 dcR5UY0lvDQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06CFC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692783371.16690.3042609621056514442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48f781d7105b4e05cb1ea86c86491090f3137abd513c32ae3bd89e975942556
Date: Mon, 17 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786927833
