Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2BD2DCBF7
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748109594; cv=none; b=rnBRsgYYGoKA6t2kJpKIHnbXd1zTnoUxZTk9DI6AssACkLOu+euRPw8gNvhKjmCTaxw36iXWobJxcwc8duNR/ElN+lUxWHKbByuvsANyeUsYEt1Cj6HqHwxX3n58wWBaqiAQo4CmYQ75oYCLghl/2DxG3tR/4E+bFkfRI6L6gUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748109594; c=relaxed/simple;
	bh=gf5xFCGrvWDd7rVc4EY//OGdc8prCiVRdD7CY67jZ6M=;
	h=To:Subject:From:Message-Id:Date; b=TeZZbXUrz1LndKT5wnxoTqnt5d623eW92MaCSGL0lkCEja4RhPGXCuI51dG6pi66lDRmOIhymp4wbborIZ/oBS1pysVuMYtq9XU6SnP/0tVkqR0ThQZqPW88HZQZ96vDH/PIceLIbgIsHLl+Cp8XE3ppJ9EMs306ymzVQmXeHe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wo51By5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wo51By5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A315AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748109593;
	bh=gf5xFCGrvWDd7rVc4EY//OGdc8prCiVRdD7CY67jZ6M=;
	h=To:Subject:From:Date:From;
	b=Wo51By5JILUi6pzyuecz0eAjbNGKRbUgswa8lt82wwX/BdgoxBX7KA30j2I7OkEU2
	 9aABIBB3dEti3YbDhGO8/iojLcAGM6aJADG6H9ElTRZPHf8CrtkJCTpEKMrbwDOPAC
	 TcRx2EcFMHrc7j9K16hxsvhXiNPbWXm8D4Iy+9ZqUKiMgXVX65ad1LFMvIcMr7N7xm
	 PAI41Zc1Yp2JEV/Zb28ht6usKx7YxcPwAkV1H2ugdkmDxVIka7v54fSHfcPJr7E9a6
	 bAeTcS+Eu7N6rHb4n4m8Y2DfdFZAxbiwZDcBcW6+pDrNywGHPd/yoA0r2OafI2brdz
	 xsDJQpfCQbX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14BC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810959357.1527.15403212933846071842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e20e4408335151a240f866368583aec40694d269af7ad301a2254634b6a9f2
Date: Sat, 24 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748109593
