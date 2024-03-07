Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8AD84FAF
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709819897; cv=none; b=XwRFcxtu3urv9bMxhkOH91gZi+oqvpZ2Yy4TuaZFOXYIWbV/QBrHkLfwpLk/losY1Im6ibseaRHfrT1CDhTiOutKWQMbD5IZ9oQ93sXSoIWdn6lB0izNvtuHxc0X/RxRGNImPqL8vRPwd/XYdNNrIirmbynI4W1XGgSyTuupgBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709819897; c=relaxed/simple;
	bh=nzogSiqkgV5Ycn4sxok5BWE9kOvot4mI6xd6Ao5sPjM=;
	h=To:Subject:From:Message-Id:Date; b=KSgr4v6AGWoAkD6IhTF2JSxC+vL4JRGt60GI/16Hs3WNeS9pdz2IUfXWxl4bPdWsvlTt2NUasB6PtxR9vkayMTBDeFKlhza/Jf53ZqP/5Y2oiaVpO9dwgdvpduSWaxXO7cfx2oJSw2qupczB6FAhvpQ5jyaVzrWyVjkllblIUgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aO9aJvfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aO9aJvfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 853F0C433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709819896;
	bh=nzogSiqkgV5Ycn4sxok5BWE9kOvot4mI6xd6Ao5sPjM=;
	h=To:Subject:From:Date:From;
	b=aO9aJvfOYcZNopbGj89oNZHWz55BlEWbqdd6wqbQ6uLE5kQlTaDfLX+AhakRtMjz7
	 OjM01X7ohWuIVlqmDlJ1tbZrM/j1ADaxtZVF8dknbQH8Ba7O/9a5qO8KoFp3Hc39s2
	 LTXXEpm2GgyWSNI2dpHoSVGI5lKnVgq1bunUJ8uh5MaaTQdKK3YoABdC4Z6VO9/2VE
	 Bx6Bgar8IbiE8knq+PZ78GPuPmhuEZ8HblB+NOa3pvZo/bwpjotPwsyp4yeUjSlyMa
	 Ft2ZNZtxcfKyHPhf1we78BUUFjOjCZhnEiUur+VL0QQkhejY1sl5N/Py6XKuOCn6jZ
	 NNQRcuV4IICDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689FEC54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170981989641.24212.10358916632370791311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0b15f84d12eb433440201e9d74bbac64858e4e2c3de34366c293711542b94a
Date: Thu, 07 Mar 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709819896
