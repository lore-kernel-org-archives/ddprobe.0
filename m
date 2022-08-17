Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638D2187F
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660741252;
	h=To:Subject:From:Message-Id:Date;
	bh=Z+KUqFX5QkkE3lZL9tNzyqfGwy6fcWS7wUS+0DCXHTw=;
	b=cziZAHkqWuFA0Pgdi/hA+njmRbxA7SNhi7nzX4WyNuM9K2ysaFTfGVk8X/0RFoCP
	QhQiSdyiuyYv7R2ZeowMzlCfLMQeiBWBSdmmflxjWRHUHKlCeLPniV6XU+ClJPGiUs1
	dOE6N9hUbQBple8dqQ1wcI2LYIqI+NTRaFMuFtqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660741252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z+KUqFX5QkkE3lZL9tNzyqfGwy6fcWS7wUS+0DCXHTw=;
	b=At2yedzG1gP4uFcwpI+Fx2sfeuhjxVUbu11Ll/jAvKPNVIwPtRnFPvpjM15scu9y
	eNP/d+Vq0ZugStmmRQqWhWVpU1msUVUtNoesR1lKhoWOXxdmnkrkq3CMh1h3rAUljG9
	M1xJJOFBwzfeJzp+fXxa3NwePKWdQ07MIxlvBZb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182abe47602-cd442418-7612-4e50-85e7-51d2495f9473-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74456e2f98353bb2a1d6c393b743e50e5366df01f79d2246bc3feae56f3ac6a5
Date: Wed, 17 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660741252
