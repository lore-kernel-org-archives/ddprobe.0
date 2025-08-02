Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E11418D
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754129394; cv=none; b=mdJlVuITrKj2kQv0Hv4tCW6ip8XQAK2zx1f3P76ivh3TMN8Wi+4wgD99bSQyG7F35lHoq8uIknFamNYipwTaWvl7u1qh3ZI2/6X27dMXwJZ7e7vgpckyDehKl6d7LL8K3bGOk49IDqdtFhQh0dhdrh79s6hHaoOS/JR1r2EC2T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754129394; c=relaxed/simple;
	bh=CQhjeu7IopzqUkiXsgZwRLmtRnONhcfFGv3VIcxBh1w=;
	h=To:Subject:From:Message-Id:Date; b=U71qKxuzxznDiAlckIp96QTzM8g56mZCtWXXUfqKgtrOXYougPOqfT2DdlWITjFsDgbm2d4aIurvP+sKLViIE0Xo61wtfGh2GNYKAy52hM86TGeyQ2fObGQOGQvRzql6K2Y3APQ7/lqkkWs0mXNdUDpVmpuMFKd9Nn4lL+a93xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAMNqaf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAMNqaf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DECC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754129393;
	bh=CQhjeu7IopzqUkiXsgZwRLmtRnONhcfFGv3VIcxBh1w=;
	h=To:Subject:From:Date:From;
	b=kAMNqaf9OgaOONYKQOOKk9SRNvVc1HEahtUVPkJUJw7XA5Y55WNpvV0fUUfnAGURP
	 qdDwOKIEhfJmFsqu6r/LvCEsoKb2Inov6AP96YSEUdPWblw+lXNxZUAPaXGL5Fqo/b
	 fJ7UCHGH5/wFK7i0iWgn1+KxO9vL6pWVqq5FlwdCOk2nKa1I6Jf96r6owdNkq4Wy6Y
	 5Pf1jCu2Njxx08/4fRS2N6qEGP+UKPbqGGycunekWZi95yfSIgei7EQwbUlxjoJMeJ
	 uTmVuXdeYfHXiRqIYvgINB31CiqJuzi6IkPgnEwiOwgd4qSxKOemK24K4zoF1kMI+Q
	 rRfRW/Wc97hRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EBCC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412939357.28485.11258145570449957375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f289334f80ce48727c7f531851b41e03916568932039e139945ef094d4668c
Date: Sat, 02 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754129393
