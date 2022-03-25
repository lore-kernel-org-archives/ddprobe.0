Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4646F28E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 21:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648242178;
	h=To:Subject:From:Message-Id:Date;
	bh=VokueW14SO2FziiLfeesYqsqNLoyl1zBlFK7cUUmawg=;
	b=Y2dXqPILrbr6UKHfm8nP75GRYZGyybImPWrzXwngqBZFgBrzig9pEejA/l5+V44n
	vPg7MPG3SubuzthLTZ66qYI3hRQYXUBzohyapnu1rNN9sPOyV7Mbh+zXn4sr3sV/Ctn
	bHnbmoSlF4CJ7jW8wui5576zoIQ395i67stl6EaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648242178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VokueW14SO2FziiLfeesYqsqNLoyl1zBlFK7cUUmawg=;
	b=fkwGxG+qvp21ddsMXNsLVXgRyMQtPc4Bgk71mZnHiOHYPrUKB8aVCd/N0wX1xA2H
	7J7jxvW5wBDp/mS2iZuh9qD5lh3p/h6CgFbKSVD5B0XU2bFJbS9LlcDFEEmX1l1Ll/m
	UTqYdpzwgF2FRT63UCHF0hPZyE+8g995Ivfj/d/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc2e3b8cc-2ffac7e5-84a1-41ae-b7ae-4fd235b69f42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57cfc6dda90f66c7894a4be6d4d6b9ea3b64447dc0333c21a76a44de772433c4
Date: Fri, 25 Mar 2022 21:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648242178
