Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555A0455605
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790980834; cv=none; b=exqrAu+4aSBfIeDWWb7gLPyII8MvlpMupmC8hJR96qIAVuhTQbbhibv6z43QiejaKQGJeTJlYcjXEbHUPYqDVSV7jWEPp1JYbR5n3eA1+/tckY0spPqwANqkkS9/MlCzUCktD4YJLmPsIsOQOK69KpqydTMC1xXN65CgjDw7soU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790980834; c=relaxed/simple;
	bh=pp27M1OWIO9Ae/yJo7wFdkoR81w3BFj6LjzPkzJLZN4=;
	h=To:Subject:From:Message-Id:Date; b=UpVPUxlgejpnW+gZTAsFcwmVv6cw+mvb5q++lmixFTolTMfdyCWM+jC6aw7WsR/q9ENupE9kGcZGv9u2aY4R44nC/JvsCvGb2zYuUSK0AcDfuO5xRWbpHDTCcOpvR9LuGF6c6TWeAPoVBsRhcIDa+T8t79BEAH6FjFaUdz/6CcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cC+VfLZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cC+VfLZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D231CC2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790980833;
	bh=pp27M1OWIO9Ae/yJo7wFdkoR81w3BFj6LjzPkzJLZN4=;
	h=To:Subject:From:Date:From;
	b=cC+VfLZ1J4EOM4tEzXoEEt2jIV6pX7isNyCWuHnIAfU68RqrhTWUJ36pu90p9By0W
	 Wm4rCdm3nf7nQm4YJ5pie4xcxjTrcpfaj8NJJsBuO/VAcoaZk8wzW+thhdZADDiaGu
	 3DWmfkeH1aq8NPQvuy7eB/pwV/pFJMb4EdVZftV4WE5ZF1fWpn2alWtIF6ibUaPwCK
	 YyNdp8g47CgW4LAvAVnlvrW2VL1igBMokVNWKLxYotrqbcSbalybnLgtqVoCId2iRB
	 lGjUidzEWC+ilNGbq2zGFVdpO/4nVYtBlm/rauD/4V2CXZph3gACDuyd2xcgD9X8T9
	 ZyH3cJJ6lV7vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B063BCA5FE6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098083371.29792.4422552926131988277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d767561d36c8fff3958bb510eaeda1b612966b017e22da013b44d4490d58c60
Date: Fri, 02 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790980833
