Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207F81DDC3F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774720494; cv=none; b=E4TqmnZOheTpqy6FMuuhKzu4s51Btk+cVj72plRrKL+nUxOkNbD6fPwRe6Pb8k/oBhYGxHZYvv9VgGbfywxGp7MUtsKMNnu+VsvNSqQ+b5o7U9NpBTgwbG2d+Un54bzLHdsa4x+7QaYGEYzLKkb2Xl6Bawivg2bxqnEOMavNXZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774720494; c=relaxed/simple;
	bh=HjGGad83Uln3qzjcydQtpieaXppr6Cz6SK+7QTd2Wbc=;
	h=To:Subject:From:Message-Id:Date; b=GFr2IualePg2JbPAuIMBnC9B1olOCossYyOto5gCNXuEjj0cDUa+TyWQJd8LUbL0YeybceHTEKb/SASXRFKJeZiI5NgAOEuHIEpe/sL2O5lhG8p0fdY3WFAGP2gqTMebkDrg6dqFfwqffbFP2Fl5v4g2QSuaClAigzg727F88SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNHKlsdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNHKlsdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A949FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774720493;
	bh=HjGGad83Uln3qzjcydQtpieaXppr6Cz6SK+7QTd2Wbc=;
	h=To:Subject:From:Date:From;
	b=TNHKlsdYlvaLbV6T9JwhlAzO/IYq6FjOHUE61UFF0hJoWfHI2c+zouaxmV3W6cYtO
	 h1xrr5Jqb3syMemZ0dipFgKlA/fCJuUbz7yMqbgA6QXv1uxgkcZ48A800+hNd4K2E/
	 KNTZejCeM+BpWSZneTfrFN4/FPyURl6XqKkIAWKsMAbgCYqalpiQcKNfb1ZQsW4vMB
	 z6xxL/XyKnkQzxOcK6rAcFs+9BZAl1MBuoYHLr+gz8TQLYXmXnrATqN43kgemZJcF/
	 JaEAYsf9ZN5ssL+r8v1oKmacCUi2XxO6r/wsfN3SP3N9FLif/fLzkEf9SwEgHXJ0fs
	 urpGxmVQbLunw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DDA10F3DEE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472049358.30604.3964461023179587276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d909fd64550a1ed187301638e20795726811d926a683fab37c30ca90fb34081b
Date: Sat, 28 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774720493
