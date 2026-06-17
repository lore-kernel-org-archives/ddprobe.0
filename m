Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC4137DEA8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781721394; cv=none; b=a2NAhR0ZOilCG2gtCCjo9ApfznTTajW0xEzxDykhAbiF1UpNTImWtwIGSO9QXwGbzRDXye1VheOjDg1ZotOrTk1TFmrI9l/IxHbnFUdLbJGmxGjQG3/Ui93PudnQ8o+fRRHN4/RZS+Qa2OPVkTSbYVpzMHuTrxuSLumnoo+qrPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781721394; c=relaxed/simple;
	bh=0kOtApMVtxRp0gKVrTQvicKbuVEpPCID0l2uHdGgpDw=;
	h=To:Subject:From:Message-Id:Date; b=OEwwTOE169AtcYOGEghJKl4aGaa/otI+m6f5YJ3bdVind+km3/AQXQ1omDVIMk3SJ90uOZSbPKLZyG9SXWFjlWZqsZ9OH4ep7OQVCNk1Dck6aj6+m5XDSAqmSrSQZh/W9z7Kxdf8cQdxoPTkVhYb1SYDB7acECYIV51u2E05M6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMwb8b4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMwb8b4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F28C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781721393;
	bh=0kOtApMVtxRp0gKVrTQvicKbuVEpPCID0l2uHdGgpDw=;
	h=To:Subject:From:Date:From;
	b=YMwb8b4NBjM8q+MK5z0Z2kdA3HkeKdKH2vjAueSXjvWF1VxZsbUUGDxaKfmkcfa7T
	 Ip5HA96IYy4j7LeMZHR2F31e0IVV+LocxUwUcIvB2royoP6O5aEqU6DIvYcdZpjA3T
	 p0Oc1VlfNNGZff0h0neiwB0/CVNcDvsBsb6T941fRzOBHbPOSTbydfYyxc9IrOgNn8
	 qt0DhlS285GilZ/SpNwmklL1L8vWlUa4zx1hSYJJCqBKWhz9ri+Y6Xwta8SXD71HO/
	 XPZKSaqfLXB+OQkNHDx5hfx1KQu+fsF5OncJT68OeHXF8YUdgP2zUfcLJtkgWCa/w+
	 lDFDZmEp8YK5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4952CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172139371.15406.11874108296379601984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722d9dd4b5392cf0e8c7e5a580d0179748f6b73142b78b6450bc96f3eba288ba
Date: Wed, 17 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781721393
