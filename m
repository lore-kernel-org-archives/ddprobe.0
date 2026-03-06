Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1846A41B36E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772828094; cv=none; b=GnpeMajcq4IxgzVypELxF97sSW/I5Trr/hK8cZkVCt9bhAqrcAhipn/BUIgdMYjT40NEgontwjR+eValEdGSWrLKOHft+GjDzKKitXj+vXI90lqoZ7oYcl5VSGEdhh17iOnii2Ey4Wuyc6WwDCNxCBs0+pkU8AWpnAIf48b7EH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772828094; c=relaxed/simple;
	bh=HBA7RH38Eom0wXAD+3kMxLLONQ9vfd3KaHzTWrTKT5c=;
	h=To:Subject:From:Message-Id:Date; b=XTR1yon4IANLduvASczZgrArTMw/UR8+maDfuB3NsJq3y0FGbyRYE2dO4ci67+0g5FcPzedMkQ0NgSxkPFbFZJZG+j8w0Y+xfMPQCHztaJjcmZaNAugfiYTTc2QCJ5FY4UMNYx3iAd28Yi3K/JtCc4PcnFZXp6UnGdOrubuqges=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0PPXLUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0PPXLUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1F9C19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772828093;
	bh=HBA7RH38Eom0wXAD+3kMxLLONQ9vfd3KaHzTWrTKT5c=;
	h=To:Subject:From:Date:From;
	b=o0PPXLUw2ysuqTmIfLDZza3vizyJELbpyE5ZTYSB46jSwk+o9neWq54L4AjWDNEEG
	 NThqgw4ZJbRO6REtUuCon9Z9Zax4oOSf3QgOyQr8oycWOaMYvlBO0dLoRw5m4nC/MR
	 jCh04eTG90FrlBV7dhB65iseuKZ4yCj7hzZbwyr/MJM1U28mnXSuZMH5L0T1JKvJJs
	 7IHoPMOjeWeOdRnPfAtFvlbHRwHgPONXC3vCTgSFe+5JEnM0YBhrNU9Ty4C6XR3uXy
	 6vxRHPB6jTTyDLgsDqhGgjtUj9l0ez/o74sNAfLJtjDMcmpUb+3HImjIRWBrw89eWT
	 6OYRdUDvKu19A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABA0FCC073
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282809362.29296.6815964922270181923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514086ba690a00d8849c38f4ef9252457b1bb55d598c6c45dd8e885dc4873d8e
Date: Fri, 06 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772828093
