Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C787128F5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 13:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649943718;
	h=To:Subject:From:Message-Id:Date;
	bh=WbM0xgYj/cODWspByeJEYDyKvXOjecEwUn+/CYqLtF0=;
	b=M3f4pEIS81pXSA7ysXRBvQJSEq9TXBrikNV7jk/fNxKVLFAIQxPGCkMvAMCjqiB9
	VaintkvlU7QnSoNY8OiEjRK5R48N4VObJ9/6ZMOIs9HGcqgQMxxuebfJfBwCUZUAq1P
	JbhVoJJdQUq0+g+eupgovQXotM/7DevZWjbjlHZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649943718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WbM0xgYj/cODWspByeJEYDyKvXOjecEwUn+/CYqLtF0=;
	b=GKMIlDXo7pkTmx9oEN8rbS/0lsEazerGawzoGbkme+bW4o16Z52vDQWLVk691CAY
	6DcayZMtGfsoyMngTwEsCDZk4t6WPWq7hNQ1gjNqlKguJY/OVHq46KX7R/6INK+PE3V
	aOnAFbc9oKyZ9ov+vle4HWP9btklUZ7MbJbLqN5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180284f2954-18130001-9096-44d5-8be9-f735049e9964-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2a1860694d4f9f3a6198d15983a717bbe9c71857b28fe4373ee8650b2df2d9b
Date: Thu, 14 Apr 2022 13:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649943718
