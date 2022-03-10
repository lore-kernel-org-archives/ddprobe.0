Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6935E18D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646932885;
	h=To:Subject:From:Message-Id:Date;
	bh=pqxp3HeETFoPenpYqkAeUjnBBYKqzZl5tdjGDUMEygI=;
	b=D8sqeDpbR9qUPriDTjsUQ6kR+VjkNI/5+YVINJFXANPp2WFx+Bknbov4E9fpRMUE
	QDmNKU3H3ox/N/5PyvoijEz0oBJCvbNF8+IwdKYDRAZVaAgGp8kZhvDfDcg1octZZbT
	XPThbKXoRVPB6L5Ae6OYaLeIdgBnev9TKY1ZfsDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646932885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pqxp3HeETFoPenpYqkAeUjnBBYKqzZl5tdjGDUMEygI=;
	b=D0vil72iwvXfIKO4OyEFkRDbLgg4KXjLUhiU49eYext8NXSiu+SxCbYAc2WcFkN4
	VCjmMX87tFKAPK2zgtbrP40WvWyxXrcLutLhDiMUJas5KEcJ7JNOYZV5qgSIfe+p92Y
	wzK69Nsk8ZnhlH7Z9kCbAijlqGVCKVEyRMG816eE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74d97d9c-86e96125-2821-4128-9d9f-46b51e2a2415-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ffa3031ea671d3c00187da465ee2c46c69cc96a29b616efacd34369007fcde7
Date: Thu, 10 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646932884
