Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455BE5395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647733884;
	h=To:Subject:From:Message-Id:Date;
	bh=kLYHXhqiAChJruU5FK1jOMitvEpKdgQvRokiflxN/w8=;
	b=dlzOxOM1YLD3pLpHxdRl2rECs364S9mbT4tIrVk/jLpnx1TeR428ac6kJvQdJMMH
	2txGXB5HNDOwXhIEQYOvhO6ghlMTbMhKi3VhMy9O24TiimqqGtfL0ahuT2X6nHs/Bci
	xrJigyF5QC8XmT123HGt9FPCmxF7zPNh+2ha4xpM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647733884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kLYHXhqiAChJruU5FK1jOMitvEpKdgQvRokiflxN/w8=;
	b=hU0c21MPazatW/zVYR1M6Y5qSUyzQ6G8Cp3GvBiAJIB6Irari9D/VdVyWWg+JOpd
	Ni44vDs48kTpMMpz7Z3hHXiOmPkXpyAewRHIk1TBmvIQ/bGBgCvWxJQ8kooqSKAmu/D
	s+oLdOdlKnq+ckJY/UDFdZabhDsCSMPWIopLOR7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa497c729-a17d5268-7ea8-4e89-8110-b1b9ddd23a82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 726f38cc4bc72c7b01fb15a9f4ca601e23f61e7bb4cf529ccf246a291bd6bf81
Date: Sat, 19 Mar 2022 23:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647733884
