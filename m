Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD10815AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647574585;
	h=To:Subject:From:Message-Id:Date;
	bh=sQrUm8x6M6WzY8hEWGnr6X2kXNeCo6dJz9i4FLpDxGY=;
	b=f/SuCOtIB+9VcjL0umqPwUwFnZuA0s12xOeEmtaUPxlVpLjaNvgsbZGsyY3Rv2S1
	i+Uu8LqzxIsnFzRqPx39uJ2o3jqVaxAeAVM6pQ3gd/iRKhbQyGVQ3CCjYslG1PF2yZM
	kkreUaca68IvDVqBpwcibcjrho+tFhScfcuACyW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647574585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sQrUm8x6M6WzY8hEWGnr6X2kXNeCo6dJz9i4FLpDxGY=;
	b=gO6ASxxnEeecYZS/MoUg3NoOPE+7IOv1jWcRfpO68R1Xx67Uxsnbr7GblgGD4/uY
	ugT+sLwlcYAwhEboHQIbTbgALQRyGGCgAY3uW5GmuaJS42FRw7WXJwDTeOb4DccAhyf
	YG5BieFtrLUW1FMN7b4xT0IgtE+rWmClUXtilIRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b190dc9-f124cc7c-c264-4bc5-8367-9c72146c31ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e267c85edaa57adc53dbd842432e25d6f710730c784fbd72fa9878b520d76ec4
Date: Fri, 18 Mar 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647574584
