Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B60520E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647709884;
	h=To:Subject:From:Message-Id:Date;
	bh=XOeEQsuYimHVfUk+0SyM3w+zERy82h6+O80G+s9/qK0=;
	b=RGVHE5dad9gaQMXUNB9vJnW8rPWpWB1nB0RyzwOomQvwTBbBY2jyqgCluQ2Le/dp
	CBDI+k+AzHNXDBD6ZKInrkVBQBQeVMmpijvc8SIvteXTwRBtuBfahsppk2JvyVyLyKA
	MaKq00BrFwpvCn65G7KfmVUahKRwgrx53SAvG+jI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647709884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XOeEQsuYimHVfUk+0SyM3w+zERy82h6+O80G+s9/qK0=;
	b=JTmXL21+bhK/kmeLxrtkUMjNBoEzFTCxHEldXVUPPJaiL4ba53sn9R6b/UuIVr6R
	aNrSXcvY3xTFyFYlFTSllsAm19SO0ChKZ8B1TKMdZxnoSBQ0Ma5yuWg6WLxIJ2CSEpj
	2IiG5Hj+QD20AVzQnHb+2gzr/Qyu00yvlHG04wb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3299148-e00aeffe-a2b2-4f6e-b403-509b9bce6ac5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f0df0a53c8c4f0adb2b38b99bddb6efbd7f3d88bd08fa099770cdc13dd35e7f
Date: Sat, 19 Mar 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647709884
