Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327F926AF6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737019554; cv=none; b=bvaUx9D32jwlHSjIQ6LEd+so3pqR/2CwemzEI944rOgeOc/73JcLBCW7CIDk6Hj4ns+HOkIsuntYrYAypqFP5HWpC2VWpK8hmjS5UQSCz1YithpaBMzd+hlidxLXJHtyM0lZXMaQpuUUCzSm7Pa6SaFGbvSMhuF2qYrECzDnK+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737019554; c=relaxed/simple;
	bh=/dJ76uNAhkBn/AJVQ7ak5AaBF4xeUWIr+L11A5UVr5o=;
	h=To:Subject:From:Message-Id:Date; b=PykewsppiLCt7Z7+HNQdpK89Zx8+AKlCEh8xBOA4+RmHyA13WQvuSe8ZDG3FfG0OMuw7hjgG/WFDmfAPc3TNhPm6/le82pCj1GnmN6WmV7lU+7dVX4A1vt8g6AR5lCS+/TXtg+Z7LhOzw5d+xJDdpNd2jQcvkaLWvdE/v/+Arz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nY1Bz3O6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nY1Bz3O6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B8CC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737019553;
	bh=/dJ76uNAhkBn/AJVQ7ak5AaBF4xeUWIr+L11A5UVr5o=;
	h=To:Subject:From:Date:From;
	b=nY1Bz3O6pR52tEN3Lgwl7Xg+avHUje78ZEfvgh3CPlsGGv36TnwI1PBhQeXotUGEt
	 WxcyLJ0feK25SZU/3IH12TiZa9sjwmDJLVy8Q3/sfAA+dA6v/jBFD4lJcelrDpmJan
	 rAFGymxS4dFFsL32wjVS+gdAcU9JqKSQKi2vb9JDhYuoYiCb50zy/mjIn2e6s++JqL
	 qF4hJ3iCdjCSHDG7VZ1J3kP5sDvvQYnURSA7oeoFXTKp7YksH8EpcDcRoQt6GRqMn1
	 LgiuxfkOkyqZBIiswh2CNsLbPawJMQnfYm89ua6fQk3VHCsTzU6cqI1e2wSXfCHCDP
	 WroBlBKsL0IEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C2C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173701955359.1667.4839086679917052073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6edb931ccdfc28ae98216304b101171e6c7696d6719ba87c50bfe14ead4ea2c
Date: Thu, 16 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737019553
