Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F419B7C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657208812;
	h=To:Subject:From:Message-Id:Date;
	bh=51Iqcp6io7INjK3X2l49/5wEt9mN8FOg3l/JwtSZdRw=;
	b=E1uD/58+J9hcvV84fYmpfh6XEznH3QzFo0kgSCHGrh8egIA3+LV2+4Yj/lczeyb6
	cuAz8dMLRyRiWQ431ldPmxqVk4Tn5nQBirDovmJqjyMjbOrS6ApZkgJgoTueVxlvSA8
	g2jm5SHSU9mlUPIRkL5mf/IlyG1CsL9B2YTq998s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657208812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=51Iqcp6io7INjK3X2l49/5wEt9mN8FOg3l/JwtSZdRw=;
	b=hCnrO/9vfrDNdu3EWSCUukmppKmlWp0PBH/SghUoYrH/YM52muzrBYCt4A1I5NiL
	+62YfI8x47zPYGZkZpZQgv98X4NbukS/gF/qy1knAH2EzojstSfQcau7FyiXbtp/z1c
	9W6ewehREW2jhx/L4txL54d+ok8nCM674ZTKfb4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d957b2f6-ad98869d-8170-4230-8428-0328edc7d089-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 487d99ccbc1cd43c1637107534e728bd02812219407bfd720d8c8180d3c9293c
Date: Thu, 7 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657208812
