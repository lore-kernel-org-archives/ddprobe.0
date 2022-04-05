Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED3D15A5
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 07:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649144878;
	h=To:Subject:From:Message-Id:Date;
	bh=0ALoaOFeJ2q9ylpsPijpAO79Vkoi4sAqO5KUPIKw9s0=;
	b=f/RiIDZkGvQziDm5eg0i3cikdaMc8A3YZaF3EGGdqedgqR8VOxvdkzjbmoY8p1t+
	ugGkyzG4O+LvEQWxysGnuAZEamRoITvZBHwdxD+bVP6jIN9yPGPRZnwUISxCdHA0MSW
	DlPYWeFyoOGKL6bfbEeVxzilbVBBKgwd0ls6wxtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649144878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0ALoaOFeJ2q9ylpsPijpAO79Vkoi4sAqO5KUPIKw9s0=;
	b=aKzLbAKaLMpQSa6qjRR7EKb2SNsoQTaCZG+TjZ48Yzh9UYd4tNKIYXL5MA3byVo1
	NO3ZkJ5/3C4C1BrGIJQfLMxtGXnA48XlgB3450eTnItjlLyUIlsAEOqfqqIcLVC3oka
	l0RSfW/+VQBlaSifIJcZ2gOviwdQ2cfkGq+1Nx4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff8b1d4bc-fb415af1-380b-4133-9353-5d1dbdda29cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5902bcc652f1d444fcfa01cc816c4825dbd32aa94f2615c373a7fa959becc228
Date: Tue, 5 Apr 2022 07:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649144878
