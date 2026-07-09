Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FA035C1B4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783628914; cv=none; b=id8ptIYOQ0H0wg4jhgsExMiZSIpHXTv9etfqZ6iOpt6gpN1o6SoQnROwVtViONi4Kt7Xkr8ZcW6AUl0msMyZUa+e0qcEbZi8y34HFc0KWUqq30Vbq8fns/65mhXfLnoM9BesdxiA9Fz0lW75YjVNgVcaggSYViPfkZgPecEQrQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783628914; c=relaxed/simple;
	bh=SuaXf7QiYf6WAvy7fmtNQEwJrSLkOo8QuM66zdsYQlo=;
	h=To:Subject:From:Message-Id:Date; b=IvgiDT8pZdZmzJwWQJhaMfcKR1KivEb58QQvuKKHo+m2l3c+4aq1Nx0QnNJZx4BHLZDxqDFM525/y4+4+eHuBE220drQ0P4yQOwuOO55CwxZU99A6E14IObDBLuqUbobQeXs1uL3ys42xcdWiYcIxF4rSMx+5yfRiD63pIGI+aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOjv8LhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOjv8LhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9A8C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783628913;
	bh=SuaXf7QiYf6WAvy7fmtNQEwJrSLkOo8QuM66zdsYQlo=;
	h=To:Subject:From:Date:From;
	b=AOjv8LhRPC6THrJ4RCrN7O9h8of+sHjxkIJPsKJHd9V0b7ZHIVR1XcNVJmda8tWf4
	 2pMhZhUCGh33xRvNLk7Qam/9+4KA3p0+TOPbB+FhYNtOqQPBmv9awqc8vv4Jpb7nVx
	 yMLo/WbRMhFPQQ+h9xG1MfO7kx8/QTYVERGGPlxG7K9IQKloRlGoG4rJxbLpc+0Onu
	 Gd2hlaHOrmLDvKGc9C6EwC0UJpXcGnezmkFlgw5h9xcekgDUoACRrhTijoTMB3xKF/
	 bjLPZPA18TiHwbyX8oI6cTL8Xl/Wy9W6wwJSagb2ZruQ+/G8quxKyzowskRkae31kz
	 AUaKZjSG9Rt/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E47C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362891368.12840.3598511085227484401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915ae391769c0fb6795b022523681ccbbdc5832931d4e0d2f010f47793632e79
Date: Thu, 09 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783628913
