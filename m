Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39482BA2D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739433534; cv=none; b=kBc5+90l3nWjObnb/WMRwW3nyMv2au6Pki+zaUvSTNjF/dgCrsH2jOv7WOTcc7Syu/1o8bF+UzTyigSCd2aeRDlsC/6GNIARwjM2GLI7hDmSj4IFyVeldTkSf4vXrHteeu4GmAV4FWFMDaHxBNmDsH9SN6MEyDFvAV+sOyAIMYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739433534; c=relaxed/simple;
	bh=Dg/vp+38dUgufhpxwkfYaWPNY2uICPFSylrSAHq2ayY=;
	h=To:Subject:From:Message-Id:Date; b=skybiF5UtQj0Te1K3Z8y1J2Rq8d07zMzC5GJn/bnuUZggp9LtJ0Hhr29nQtNl5PLuQOWApETwRP0rVYYKHt6znWIW29ZueXM3/xo1zvsoAp4Z0dODGa6Iprp+Gtk8Uqz2hqpxRjAcNihiocKao4WDEykPl/YsSzd91QtCBpqKlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ue2vTgbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ue2vTgbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC84FC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739433533;
	bh=Dg/vp+38dUgufhpxwkfYaWPNY2uICPFSylrSAHq2ayY=;
	h=To:Subject:From:Date:From;
	b=Ue2vTgbwh5724t1XF6PONVADe/krD1ss/dj8hKJdvieQ0EzD/u54iJ+MUIL02mpj4
	 ojHSWW7/vtMIemXHfpp19OF+PS2Rps+5MRwme2RLBbqLl1scsD8uKsa+bVx44jHBh2
	 8Kk0Zr24PAfi82OqFoNf9rxYsn8FkNpOzHunxUkYQoMhwdYB0ULIijEq+oDElwwlV3
	 4lEnLwNA1blm85HHeIW29nqfjRLg5e7b0qcmrNCAO2DCXCMLumEJfNGjzN/aYOZyjM
	 mpVxlFTed+ahTbcYLw3WMn02ZawhOcfpRtDG3QJb6vqwRfuEHFHkU+lzvXFkh2P62H
	 a/CP1/lrF1nJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B6DC0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173943353362.14255.854879817681100878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082f9da120162e08a915fc2f9dd02bf73cd31b059081690a999d0f3b0f1f566e
Date: Thu, 13 Feb 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739433533
