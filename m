Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3CA2912
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647380784;
	h=To:Subject:From:Message-Id:Date;
	bh=uw+aZVjKVdyMv63V3rO7WLFQqI9Y0XTHBZzNcCXv4T0=;
	b=mZXotx854vN+7SLNFlMe68nJAwJofHKXMQEdrd9BcUCiYe0hdc9d739EXGuq7ml0
	jilnvd/VHnQeEPUGX1b8biKPOJqnkCLxFSaAtytQxCeQvywxDG8DwbLRF05P57G1/ky
	HxtzUwwEnNeP3nu78Pwi/QhkQFbxfVKRTVGGE2jM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647380784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uw+aZVjKVdyMv63V3rO7WLFQqI9Y0XTHBZzNcCXv4T0=;
	b=G0YKOAy5TIInkv9Gb8AYqgaJeBfCD+W9JnfLFrVJrUKoIu9uxyu8MjDL2RVwFlsz
	Jy4mVD+yT+tGmNZ1v2JROma4xIsCmBXdLHAC7f3RJshCgCTT2ex8psRMXFR8Y0H9qrY
	fcjTGmedClIr/AgBsH5QXkU7s4PyALvYlXlJ0TS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f8be6ae-ad0abbc0-b04d-4b76-9c48-93d907c70b5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10e82885885ca433bbead5a5ef8141c206b961b4f6e46cd24cfdfbac767c80bc
Date: Tue, 15 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647380784
