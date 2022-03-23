Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD4F614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648055785;
	h=To:Subject:From:Message-Id:Date;
	bh=45wF45Bdaz5zu6LQlObgYUuAUkT5oStzqigEsU0G80k=;
	b=hWj3uO/u5eMOmtg/+Y5rtKA6O83xHDX+V58/Y2H1OolOa9sGz/W/46duqgg5dblN
	D6WXCTA320dAn27xavq7O1uoJJkvOcnCggV53XHCuyCrfrDxoPzO36svVpQ5tYBbjfR
	GboyDjNl0Kq9YhbK7zKui9718GYI8EYDy6QIWzUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648055785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=45wF45Bdaz5zu6LQlObgYUuAUkT5oStzqigEsU0G80k=;
	b=egi6wgj3ZFy/b4WlEsg+0DR1PIS6ILfV5uQSP9l/TPKoi5JGAGhkrsNmGWw86GsZ
	WWOT+yv3FUl1o+aM9SVvbhYOLFNKROs6NAeKwzwTtHvFT9hMlV35Lx2pkAjA2cjxYuO
	uswXP8JJ5BU9tMzPw0FPlouXJ5zL7xkEICB2KOso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7c79534-52be4fb2-09fa-4bf3-ba79-72491242b13e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79ee82dc7d60a7fa8f98360baecdd8553f29be71a25ac929b2e3183966a9275b
Date: Wed, 23 Mar 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648055784
