Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FE622612
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721193923; cv=none; b=saiyswe9PV/y0Udrfnm2k0aULmzIYb/Org3okrdSHI/yTkYJh8Ce8IPnT7Zn6zAN/xlQEgFl3B6puMzh8hIaQtYpkDg55dFa2coY53QP/agzEVPKHXlLg4WW4dEn1yo2ajhYqVw7CoFg/6PjFxpLRRyj2dcRiKWnK6xeY20/TBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721193923; c=relaxed/simple;
	bh=rpwtJd2F++bgbpomBkmsGhDqlRhd2qJ9GuYiohGm8U4=;
	h=To:Subject:From:Message-Id:Date; b=Dj5f8aNn2P6QHXOabEYbpy6SrkTKme9LyGhnmnAANbfEvvWvSEfk3JXBRHdG8vfgCM9hToS9qEdwAbBJo+JRh8mwisucqD9jB9Kq38LONwzNjSr6euJBS9N6vLF4a3j9clH4gopF2eO5+3z14boWRpSrA4xKmgPXybW/U0/DYq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1R2AHd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1R2AHd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BE0C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721193922;
	bh=rpwtJd2F++bgbpomBkmsGhDqlRhd2qJ9GuYiohGm8U4=;
	h=To:Subject:From:Date:From;
	b=t1R2AHd3hraG00vHgZAUQQeAz4m1pPXNXXLD+eOebn/5sew59aRLglHEeIk85/LUc
	 2xdw3rJEVYLj7stsIQ47fMHvSw68O/UqgRZBMDskK+X35QP3eXU7Npx+Ru1ikROFWb
	 gHl0cVtJiWjrrY0z7MHF3Yl9tlPZlCB9HwG7OW0ZtvBjRwJFQOLV774kiNdlYeL5IP
	 PnPDHudm5VJgeTxqN+Na+gHON0TrU6nEvmODdUQ809GtroC2Z6pgrqowHTmXS02qSr
	 e5DXCuU3RdLU9rb3NGELlhZEzSiHnmXMHG7qipW1m9Fh4zhfUKVyrbrMiAOgZg3l2d
	 MYhP1dXOjpB9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF98CC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172119392277.23141.6178693562394624056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e1620ba7a84e116ab78466afe2d0851b8831445901dc38acde4a8ea60df947
Date: Wed, 17 Jul 2024 05:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721193922
