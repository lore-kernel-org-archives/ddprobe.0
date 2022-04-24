Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2663533E9
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 20:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650833758;
	h=To:Subject:From:Message-Id:Date;
	bh=cPfw3X402SYfEJbQEUFD1QkjCc339pOHw0X7xvzXTn0=;
	b=ZhxxmlxE8/y+Tabzpe7sYW1McwxvfvR9asiTF9tLESYPx3X9XagKXhfHQd8l53j/
	pM964olVqlZKRQ7WZpD9qPjDncTCf2Oxfr3dVcf3dFsE5sYLWrZi1ohrmnA1E2TSaM1
	60mNwAdM+h4IleYUEm4sWjU+B8J/RGPAHGTaK7Aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650833758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cPfw3X402SYfEJbQEUFD1QkjCc339pOHw0X7xvzXTn0=;
	b=LN0eGBO5ln8vNNESu+1TrwEuCc4Ydo/vYbudCPhTdVIxu6CB5YQD5q57v4KRre7g
	fARf551/QlU0z/uD2wi2n3oyCRAe2xRm/YxLd1Ss5VzPqFa+Cji03u8+bKN6rgLUpGZ
	HKxzTbxGYfiCEPF+fT79aNgng+k9Lajc1Gn33aww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d5c1853-705dd195-6897-4221-85c1-eb554821a688-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c7b139fa041e2ff341e75d42ab5b015078395efc1427ed113b95d4e9b365991
Date: Sun, 24 Apr 2022 20:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650833758
