Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611781CA93
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720248923; cv=none; b=T64DrVjyIuCeEcyXIJgWFG2n52mH6lF3T5+Zcf24DmN+VImauAM9OgeaxX7QbpFi1epMCLm1ssL+asx5dAM+IRtTTsw+3Gfcyr4B0hQCwofmnk9cH/RuYTyg1XaspfylBH+d8BXrL7ZKa8BJvGIKQESzF6M02XCrPoBjWGIPMCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720248923; c=relaxed/simple;
	bh=jSSsb1DwReCAnm4QrFci7hWaBIPLzKD0TnUkq4IbYCA=;
	h=To:Subject:From:Message-Id:Date; b=H+CScg6RcbpyElp7TdXOEcUrsrv8Rhvcbv6eFhNno+MUzEozPZNs74y8BsEh13NFqodZgSDu3StIkbqrZJDUs3JFJiR6Sw96mHDpbCBoB66f2noFK2L5Z0vGdfGEm0dwlbDpO3E2aGcyopKOXt/+VNOoTvDQtDU24yDyxMVWdyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFuScHRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFuScHRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAD0C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720248922;
	bh=jSSsb1DwReCAnm4QrFci7hWaBIPLzKD0TnUkq4IbYCA=;
	h=To:Subject:From:Date:From;
	b=dFuScHRFe0DH8zAWquukYGDyE9VSdSe44bOSB9kvRw+8V9prIytfEX6Hpgd2iMHvK
	 TGWiha6ZDRb3YtQow3unnmzE93eKh7dXlA2gzX4Mjl0jgY/69lkSBL4pQgdpntpvbT
	 g4slA/FKFnMhTRjNoMkWYxrFD/BwWhGJZ05+LGoVoUBSF9EjC7qByHVxGdlV+MgrYk
	 Y2q/4JgPdAqQHAacs3emK1/qJe+Jef+ptBiNjZQaYCbwF9HG8HMhjgI/CmtLX+XtYf
	 K1LnEwQdPqtnzvEvi0jJ1xT3As/08zyIQHHPQmM9NW/BkUdmKBiuujJE8Ty3ewTkIj
	 RlTgfn4ONoGHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6AC3C38150
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024892280.4016.12028423761176605202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22452549886643149f20fbf846393a980a060eaa443fb843b3a11a258ac8c3cc
Date: Sat, 06 Jul 2024 06:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720248922
