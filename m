Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246302DB788
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775415334; cv=none; b=iPDEU8LCNjpdZO14eoNlzo7+HIOnEbNQpw3g12IfT1gkF/PvGTNsIQU3OKG4DXcuFVYU/H2I2EKWaNn4h5ERA4mdIL/SxFQDrssyIhHNetHjrdy+Gt+Mvc3Jc8/qMADKtn87i5/r/0d4ZNSPzGgcVLcBvaSq91DtMNjI8f5QNUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775415334; c=relaxed/simple;
	bh=zfScQSbn9P2M7/ndRRUCn86//whQZA2LtKVgSPi/2Ng=;
	h=To:Subject:From:Message-Id:Date; b=txgPHtBEFfWTC83482T8wKYlinusRciDsw79uMJLrlpmEjkdcTAfU+uTNMe3Dz1nt2zJtAVOXgBRFyFP+7YgGWX5GmkbEU20sTAdwo+JJ/saykhrPnY95oZtOLw7UySYKy8Bygd9ZlZc1B23nSC6N2Iq/oi8/tsRQSH+gvN0qs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVHDxFTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVHDxFTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9C1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775415333;
	bh=zfScQSbn9P2M7/ndRRUCn86//whQZA2LtKVgSPi/2Ng=;
	h=To:Subject:From:Date:From;
	b=oVHDxFTBEzfOnmqOJXiw2OZhGgIHXSplFKRy4NGtcbZ0GIvy16O41z2W45zKk7cyj
	 J0IfX1K6TEoS9hHcHMqV21KQlB/EawfEbnonX4aq/8+ufaobaMZiyRO0bXrvuwd+fQ
	 2//WZnWyVz6X9AstWTvjKzdVBBYU4RKtInqtPb+qTlnRed3Qp7EDOjrvVQvY2VPfyu
	 HnUhBew3t8Nm/z6/vVoqe/OmHuWjeSe4cLJObH2y+Kzpz3qmDXiZkRcsZFAXKwDFWV
	 3lB5yyYjxZfTTIVklXdq1u2mt0+3YeEhhCs3AyXVPnnHoSuWgds8PuezLhDTujR20N
	 t2HLOkTYsXB/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CD2E9D812
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541533368.394.10324702663705276148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451264563218a021bbc43f34a34d7595e51e73f9956610a7ef4d6299f13613a2
Date: Sun, 05 Apr 2026 18:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775415333
