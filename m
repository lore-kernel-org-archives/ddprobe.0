Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121F81E47A4
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730287554; cv=none; b=LDfoobXKVrdOfH+xgHyccGnfJwNpR6HgMDjp7ST0kFdNZXBYtO1XKkGPSBqZCxAehlECZ7sjyUaLngp7d9PPmtKwIIpBXn72NzFaNcVChN5aBJBgX9lePbSKqksQkG24buc5OZ4Xok4dyZ/M6mYgLXrARdjU+NlnLj7UgMU0FkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730287554; c=relaxed/simple;
	bh=35FDyluJNX24D3711kZCYlg+1+t0ZgligByItZhCxVc=;
	h=To:Subject:From:Message-Id:Date; b=bD+R1WPzXHWDlsDnP7y6dCt1M8xZ481fjWWNYjU1z7jzQxvLBdUIH98wcATAo1XZwxDYJTor4qjTOiH3rPKnh426OvAUHD2qbGXCwy18u5/YBBxVGGDyxVNBl/uRQnDC24PbsEkKQkIrGfv3Sj/TyWno7Z5FYrNEn96LZ6tAhHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giKRUC2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giKRUC2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FDC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730287553;
	bh=35FDyluJNX24D3711kZCYlg+1+t0ZgligByItZhCxVc=;
	h=To:Subject:From:Date:From;
	b=giKRUC2s6T6R2T8XQbZTEh4WQI5ZUO5KkGHgKhyYla0wtySnIg37B3z3E1a5hGDNA
	 zXdLFJe3zswLKyQZyjrmOc6c+2DiCC17hia+OREzdsAMfAOPdBfNs0jaojboBR2V5Z
	 kKm6TRfeXuXfnZ+ITwGiduByJyxNLrJDJQUvEf8WXzHbprHPvbgMjOJZs/c1ojkXiR
	 hJRIOAhjzaXPy2/Ytho3c1ClhcxkgM7hFuY/owbrbD1yLFh6wabkMkPqm/OMHMxpDh
	 NQJTC6Y7tZ0kruisotZgguBNQKyFHXaOwsFPRhtFYNJItxD4szKSmWF6qd45pm0o3/
	 JCZ2qfBINSPAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EAAD5CC96
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173028755358.19692.3129403733527287185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e009252babe1206e991c665a3a9bbd24393617b4300031474268607aff166f2
Date: Wed, 30 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730287553
