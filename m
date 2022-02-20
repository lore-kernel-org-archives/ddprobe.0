Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651AA57EB
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645328784;
	h=To:Subject:From:Message-Id:Date;
	bh=+z58H4CTngvdV7IFRkWwTnZPzxTsYrUH5YxL8IFEEe8=;
	b=gB95O1VkBvc3dwGZa+zorR5Le+Wa9R04tI/38bjJ2CgS5/+NHCaf8Iq0aBjMNav+
	Y1nd0hO2u7CfeKaOlszKNOtfgZSa2xGhwrffmTMWtpzMar3DXxXYjOdeENGOviMYhRZ
	WIXBF7pV7EPllHy9uCLSqHSC53ttdMAnQHnqNEvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645328784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+z58H4CTngvdV7IFRkWwTnZPzxTsYrUH5YxL8IFEEe8=;
	b=Qqv1eV+u2I/F6AIPc0/XlJI1zPBcDHZg4o6wTFeaJGSS+gY1mpSSZHvgJMYu9/EG
	OP5IaVAFZBRXgbiXLbOiiP9O9v7oRtTWyT5rExFDzXBrsIP5POrrg2Wc43NZ/Cc2Ckq
	jlbQwBVhU4JqW4p/o0WO1y6WDxEipNE54N+Cylsk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f153cdda0-2f4ee23b-849e-42c8-88a1-8317259e76f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e21a860954711bfead9574a610d425214e44cb846f1c4da2262851809508e28
Date: Sun, 20 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645328784
