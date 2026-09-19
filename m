Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E0D3812F4
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789838434; cv=none; b=YtdWRWWyLWg8eB565wUL7TZY3WI+pXtpHPOIR7aFaqutJoVfHfUwIaVNXuZGgADyFqDYmQtAaEtHnlH/5SMtOyIjDJMQG+5jFNTMDy0sHfQEZa7mB0FuSvrn+xZE2O/9r2+Qc/xc46Q7cpYQu7KthIQEjNkQpex6+D+ydjufQUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789838434; c=relaxed/simple;
	bh=/kgfUVC6VRw+dbiT/wlJDI6ORjiYuSHJqZ4Kz8ob7cU=;
	h=To:Subject:From:Message-Id:Date; b=GEX2W98GOJiNkYnuZFt0pmyHrOAUX0JleySEuhFqS8G9Y+Q8nEJEP8u9n2bNdqsCiltTxvKkw41yHBbvNMp+PaTIbnq9FXUS0erYnrefpsnk1ykWHcgFh7Ag9+Jsm83Lw2h/I7kxMnUcItY3LZ9OSVb4rwWNzcDEgT1/LgBUNDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMNEO5Vn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMNEO5Vn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05B7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789838433;
	bh=/kgfUVC6VRw+dbiT/wlJDI6ORjiYuSHJqZ4Kz8ob7cU=;
	h=To:Subject:From:Date:From;
	b=OMNEO5VnC54UIvEAwvGOz/0G1719ZhIBAX5E12pzDrg6VNUBl1HyaL/mOxG/uwVes
	 OC8jyoJuMZc2r88MadcCEjUYwEm9/1tkU6jShH8/44CMhpZ6GK677L2lpTtpWeKxLq
	 /xeflXrSw8sU+8Weqew7Zn6il8978sZIO4CtNSlvCFF9/a/gHjAcPz79wPI3LJWb3P
	 DyVffsEh+VOA+Vmy1ludvyDUXU+yjK+icMTq4cu42B6P7qvMN6mqf2c6Spz0ZKCF5x
	 ksB6HgPxS7OO4KqWp/NjOUaaanDMbEztczyaFzoJpIiFCV4R8v7pNdtYdTUHqdVaTA
	 JP/9P1kYzPdGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9605C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983843368.17378.16257504917039504796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93feb26ca42640edb83f251310d046d5db14836d6b7b7594398afe47d3349b09
Date: Sat, 19 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789838433
