Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726762F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647198685;
	h=To:Subject:From:Message-Id:Date;
	bh=zXnNVmW/D4qjKX3tE48P98lf1CNuCecbxSEKRbgelNQ=;
	b=lGD0iWvgXirvtdVJHl1zOt6f8eu5pdSMxRKgMNNtyITB4dYZ9xVF+hm2AQmmQfBq
	PlGKWfcaHP4NW6IZ5eB1TphSzN6M8CfBuFopD9Jebg9Twk1T+69fWtoJN0JZ7NUWnGT
	1Ze3oqgH21ldLu2mo+xRwcZ34Ewhn21d+Fshlr/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647198685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zXnNVmW/D4qjKX3tE48P98lf1CNuCecbxSEKRbgelNQ=;
	b=BLvngFCLwU37y84iEA1NcgeLS83cyBl/hkk9fuxMritPTI4B5TUWDCy0in9WIjWb
	i50D+w0on0huD4fvvf3aF1bKaQWURZSHo8IQF58XE/sCK6sme3i9xOlVnqzoP8/3JYi
	yQAVaYifbPYJCVE9iOsiIU1HGWs7c4s4gPXrp7WU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84b14672-1d0f6aae-dcc3-4f82-9444-62a00728b573-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa10d060e8c95accf52a273e8c94450dd56eae7715e7bafe4fc2772c73c6795b
Date: Sun, 13 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647198684
