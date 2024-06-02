Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E111DDEE
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717368323; cv=none; b=TUpPB/yf3Mp4WJSeT4yoRMx+Ata+AaUj6YaHTZAfvzuwzd2dFH+BRe5EhjWZMtJQhkJSpM3bSVVq+ilCl9OVW1n5YlQO+zdfQkBrUMW1MVclOxAIMKNlANf1wJdWtgtag++6S2l2GmpQByX0c3dwNE2furUUQY87FGjWyAoYzrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717368323; c=relaxed/simple;
	bh=8IlLXXXBFMRaVHJaz5ZNZtEqC5taD+8Kb+D2T8iSucw=;
	h=To:Subject:From:Message-Id:Date; b=pcJvKLL/yeplAtG+4TBpzPciPNg26zz71/e7Z5lKakSs8oe0/TZzwB11dPg7que2yMLMQUe+fhVmrVGTUYPAT/6TfHDxcPATr3mEopwk3J4r2mwtLRszY4u7OlmX+nv68+tDp6UrXsM5SMRork6x0SBnqZwTLjpn9D7ehSQs/e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oC0SWe/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oC0SWe/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AB5C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717368322;
	bh=8IlLXXXBFMRaVHJaz5ZNZtEqC5taD+8Kb+D2T8iSucw=;
	h=To:Subject:From:Date:From;
	b=oC0SWe/WKsFZVTiptLN98Wjd6mVS4BMozcRGCuzAcqxceB7H4G/TsY8JXadImC98g
	 FYdePAmqyZroCHOS6OnOSoikRJQ5XZTVvPRpm9uH0rtQBYjtIDqgi4oNzfdMBx8cSY
	 A0lCWqxnSIRjqO1PkQWlqCY0luC4xTT0CI/hi3i2tG7ALJNoX7hJJEU3Of9ldoYDTd
	 +Z2CR1WCaYTy3Z1KhjqYjNprj6Y7UmE56ZsvlOjHEAxfjYmRGoLX/mUk3LMB/Tk6zm
	 jYsNZt8H9uwgTTwVgDoVDP0b4HY4eTVqqIjh6DNg6+Al0Y+FL1FLO6pW3sYWyQVnAO
	 f0qp+ghD9gQ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5CDC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736832276.18115.6108844069123922723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f859d73e3f02e15a490b1fd48366c28cd779459f5716a9510d886d517ab691dc
Date: Sun, 02 Jun 2024 22:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717368322
