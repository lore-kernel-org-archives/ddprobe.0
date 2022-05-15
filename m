Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F11B627
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 01:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652578679;
	h=To:Subject:From:Message-Id:Date;
	bh=u8Qq3dIBAOERLITFQu0xkSj12KHR4g1qwIjjlfIifi4=;
	b=KswG5cuhuNMQChicJx/IkK0lC+INgB7jRg1tGVDk7ziZfczD/HHjn7G3mbMlcIN1
	pNdwKXTrkAoXQas2jMd7/vmBL+lLZdGPXwgoddfnHr9X403+HU7BzDuaYPWA1hUIeox
	j9n9gomjFbniUIIkv5KvqfM5oZPb3sRxLqgmLk1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652578679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u8Qq3dIBAOERLITFQu0xkSj12KHR4g1qwIjjlfIifi4=;
	b=J7cCSJtWlM91fIx3l609g2IRuDAKOCyndT+tt58a/wexmugaBoxLcEGSGQ5iybHm
	IYP5UD3j/W69JROtA64cDa+cBqgpgI+xb7IYTAGfsvhMbfXImJBBNzSUblYBfAbCN5p
	xhhBAd3U4979GcPqLfMFhgeHdErftXwWoIM0Ei00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c55d7a40-28459180-baaa-4364-92cd-0cf3ff050a46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa5d367ad6e8b2d5cc612b4d64db25d980a180c08b166cc19f6251825476c5de
Date: Sun, 15 May 2022 01:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652578679
