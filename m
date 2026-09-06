Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C44826296
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788718834; cv=none; b=nCIbsg8ETkfY19drxMOO84F3wBesBT0emPwojWylKh+eLyO0QXv3RoT5inPwv3a1yDMKz1v5N4xFiw8vRPpk2cIWmzu1xe1NNiT13NnsdFU3XrG13bBNlDdktq5gaP5bd6nMgnfe2i6Y/1fhA95MNZ2mirEr/7k7Wcp6Z0TGyfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788718834; c=relaxed/simple;
	bh=dBa5fSUDzQfoAYl5gpxQp6sV2pMOuE8pN3rf9E4u0jU=;
	h=To:Subject:From:Message-Id:Date; b=GCxysdlA+rHPWRhafGlIAJ+HKYYa4kVIUj5JbzuwMy2h9jLBmbjhv5URV7ktrZuimm2v/2HOtoP5RQlaFtKMwsonfoA6X63dH+eGrfmWd+yoSlY+4dIcuSF6Gk8SuWDXftd/CaN2GncR3jLnRQ687w9xPGqzR6BqZBMSiVOWe0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCPb+apo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCPb+apo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9879C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788718833;
	bh=dBa5fSUDzQfoAYl5gpxQp6sV2pMOuE8pN3rf9E4u0jU=;
	h=To:Subject:From:Date:From;
	b=XCPb+aponDcehhGa1Fc6DIiNpGFYH3DuEYg+YRYVXFnSctDIJxJ7vLkXf0z+VXZHi
	 zT7c33qitaePa11teRh50nGzKOjy32N2JkEzn8xwtP+bYIjRq+DPXlMEVV0/abTw89
	 2KLc4v0MCjwisVqh/mo5N+S+CMsMlK+wLILht1/PMaV8b3Wb6x+ydKVxMGFruyIIlW
	 YfajhbyMb3RnOD0Pr0RzJSOAgYf3F3stTGcw/f1DqaX3Z+i+Gafh/Ji9n9zRcGzXM5
	 mtp1g3HtlbaCkNZJPs1EqnNkEgCl1yKy9pZPu4eLGkuh730xUMnI4i7A4MMxdoQRFC
	 2938z8oxM4Rqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BDEC79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871883371.6354.1043180196617041541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b332697fb66162b7dd56fad09050b8de6358ca4b222511f663f348e62aad752
Date: Sun, 06 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788718833
