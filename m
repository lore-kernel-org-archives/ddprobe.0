Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7144C12DD91
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717477523; cv=none; b=MwhnKokMCUMjf4lDztsy5GjI53QDAmRdEOXXsYiW6xV3a89kJ3yDb+x56Uu7BHzPkwEIBvSgRBbeWyrGKYCMbaRAoRjuODYVJ9eaYjDYyfgonCL8bbMALmyNhaVyBNEYv+vpGtqgcYSvW0AjorRgQqQqaD8Zw+dY+mfhVCu+nKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717477523; c=relaxed/simple;
	bh=0Xt2al5fm+JDgezWv/eR84uDTqQv6xnFxUV8BmyLPDk=;
	h=To:Subject:From:Message-Id:Date; b=mcE9Z70kaiZmjgjmxPynWMe64Pet5WNvd/XbXj6VOhd3nPFsGDGZwMNHXLhfNoifiaWKuA17kmsOdGZz+LCmH92jHmMlOGBN4nxc70/Ixvg3uUrlc9P8w1J5ZzJxSPR2A6JinF2R1gEck/fNO8WwiDLlt5V4rwt1NdBEBL7WTQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuKzgt3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuKzgt3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E446CC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717477522;
	bh=0Xt2al5fm+JDgezWv/eR84uDTqQv6xnFxUV8BmyLPDk=;
	h=To:Subject:From:Date:From;
	b=AuKzgt3BacTIye6G8jnkS6cdsxUnlv8T2TU32YlvJLnP58skgV+KZX/KgLEiiSEMM
	 C4w2Uhxo+MGzhW7z0zFB6Mi9KOrxeQ6H9sUw+K0aMDT52CgON/P/TfewEHNbDHeOIv
	 rFyn5zO1IKex5EDIHB4PpB9IbNd2GiThts9Nsq57hGkXeOktWvyb4cASYBMLJL3vju
	 tS8B3Zm5xpip+yZiih9oXLpCFdcpdq5FDw+WRfaiTvR4VVcLE8XEAlTPWIqfEGTdvy
	 QOI0IW8RV4sQS8R5e9wM/CNTWl9vprtB+lakCdjRNoayNtRnnFXqkYdLoFXMF0rsBI
	 TyXgs11ydxPBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C091BC25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747752278.12251.12925234821162432481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a6af3fe035a16db06ce6b920e93205b066e764fa790532ec477277222acc91
Date: Tue, 04 Jun 2024 05:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717477522
