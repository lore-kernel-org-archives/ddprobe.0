Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893C87B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647723384;
	h=To:Subject:From:Message-Id:Date;
	bh=z1SIhO+ZbysDWOOiz4awRk8k5jUS/Riig2OptYTmqN8=;
	b=DL+anaDQ8sA6ZsXMX3MSNsTno3CTOPKyF2Fiua423PaF5E459qpwCOGapsXloCFJ
	66g/W2BAVy/P9/BW8RUVUjK8F7PjbR5m3lG241nLDzSZUBA9PeyzI0Xmgb5sO5GAuAi
	5o1R5lsYveEp+jLp0IT1Xz0a1s795jkulRiLlq44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647723384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z1SIhO+ZbysDWOOiz4awRk8k5jUS/Riig2OptYTmqN8=;
	b=hBP9vhZ3fg4y4Am1KsJLs5AscLYKg4wx+mDt7/zxI/MwXRvpfDvS5QB2QQ88OLW9
	DCXrxjrD98T7wkiTIYVIqkxGCcBNLBhg+bX2mDJOrlr9haRH8ohtAx85/hIiRmvYiJ4
	lrzU7s2a8+3L+5xX7NidD8cL4WIXPTA6gypoHLJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3f78fbf-14a6628c-c7be-40bc-904d-6817a24f92ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5abddf56ef41737a71a9a6805018fc8f74e0d1181480ed461918ed858e26fb47
Date: Sat, 19 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647723384
