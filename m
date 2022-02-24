Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C335B1373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645736185;
	h=To:Subject:From:Message-Id:Date;
	bh=rHIXyl8W2BR0CMZFfeyS5aui8iK1WchiY53FjQqXgGU=;
	b=mb8mU0VpI4nV6dU15CoOR1pd7H6b5OW1vUMviwPLAXgn1U1wV1vI2JeLw+GSfAJc
	P6pnvMd1pZtr9gXNYbLadxPXU/N0o0RdagVpP3Lzbmg/BdLUWC2UdMisZBAyYAKwYWj
	jI20QsDIMFioaSwk4zueHZEyNtC5S6Ho11FvPzw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645736185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rHIXyl8W2BR0CMZFfeyS5aui8iK1WchiY53FjQqXgGU=;
	b=YK6ZrMR+Am7PteN2D7o+aTm9LjeosVHlmk1U+Cu8ST4BEtpvLUxXns3/Qwj1w2uM
	Pm9rDwuUC03/n9TXUqpef7QkLsdX9odRF7XxI0olrRpmKIkBTLL5NXY3zQMIrzIteRn
	LlzwbtMkzgHUJ5ZkkivtrKCZteUih5/yuHm7qvXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d854bb2-21d541fe-a9f3-4bd6-a964-309c3233ba4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba46c52cb1790b21b842edc95f113a9616c15bf6d478ef7325ba3deba46bcc01
Date: Thu, 24 Feb 2022 20:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645736184
