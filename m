Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3A47A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646231485;
	h=To:Subject:From:Message-Id:Date;
	bh=2bYis+T3dP3iy7tuk5jgqsM4NOlEo4LKek3iRopCmR0=;
	b=Wpa8oVxwrkhQFLo1e8icBzM5Md4roOiimak2VLHu6qQuYOBcJnymtetz6VmNq/yW
	5lxMWeQNXuhtgMp3vFAQLf1kOnPhPiCCjzCEerMcSmdy860C1PR+jqW8zay8g5pVF/k
	s2Ou5w+4wffF22OZHR53q468RnPVIvNkbU85rTI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646231485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2bYis+T3dP3iy7tuk5jgqsM4NOlEo4LKek3iRopCmR0=;
	b=cMAqSQNP1rtH8nBSstmLXwy+YYCbJB7lCEnpc5tC17ASvO9tR3jbS4GHjt5NL7SM
	W1XF2Kv2A5/E6xFWFFlBfmR8lnh6ob0XLy8+dQloB4IQHBQUc91iaqBRrqzhuwjA1N5
	0yX84CP8HbkCc5iilPGlbM0rYOv4yGQ8E4Sf9Aao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b0af985-1d183ef4-f640-4efb-8133-3c06dfb5f483-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f265240895f003a068b5b123cdb3b4011fa044af3be55f81df8b2ad5276e6168
Date: Wed, 2 Mar 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646231484
