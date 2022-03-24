Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C16F10ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 03:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648091878;
	h=To:Subject:From:Message-Id:Date;
	bh=lx6+ggJLfgPpOSOJ8uAUh+yQ2MqToLZ+rHk5cQRkonE=;
	b=G/txhCX/REaba8Ci0GGYSNl7Qu0tqz23ejrfFlbfWrdvsV2kdxyDdnYAoHNMJ1sE
	t+SI1Y/FmXzt4SifSK/5snLxiFaVEgfJp1mM2IzN9+smsWAaZZTu4W50Nnym4p/LTYy
	YVfhuPi0tXHvruRx9kmqQmF4bNdFkqJm50BH9hLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648091878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lx6+ggJLfgPpOSOJ8uAUh+yQ2MqToLZ+rHk5cQRkonE=;
	b=QAoueKouODbz0zNbRti4tuSDHuCJLqWEKUVuLV+0DiJjFZU2fF95t8br4TU4L71i
	P5r6lILzXxaF/DhYjdVI7gcOxfm1IuQx3IFloZKQcPCYA7UaAkVGSmSWXHipKJS7d8w
	HYeBzWG+BGb1KOSEx+3fdFuh2OOeRwb+wE5xdqYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9ee5389-f846f095-b5d8-4f2a-826f-09a9a1cb9601-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c490e0c73adb9ba4dcae1f6aed1b751fce5898119c3809bf53ef40c5abe4c688
Date: Thu, 24 Mar 2022 03:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648091878
