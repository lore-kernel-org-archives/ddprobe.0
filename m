Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5AB17D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660184452;
	h=To:Subject:From:Message-Id:Date;
	bh=cYcY0tchw35WMBsxUH5tAQN/ha/80m+UToWN+NOss5w=;
	b=fDIvir7Xz51jecWg+xjswdC4gLtuAu0MODhZF54+ZvsF3l1eafmONZNHPUDxPOjd
	jC8VRenfLRAD65lZAyWVJInQZc5TZOzMlzY2w8cdSMuzILpl0fhZIicEY/fkujcRdIS
	a4OYSFG05nGmjA+k5OlCSpd6Wc8W7CmMP9jaDwg0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660184452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cYcY0tchw35WMBsxUH5tAQN/ha/80m+UToWN+NOss5w=;
	b=LkxvvlIxsljSDN5gA0Cunmth1OqH6JtP43HKBIaf+JeAFh+PNCsrYhaNzSu9BrU8
	3jZ9+R1Ap7HdKF7wx3LfQij5W1akFnDIRfHxcV7vxQpBlbKRa+OSBXJ9CxAd0waGs3E
	vAvEUctYxtNf9Ci9yQ69bqepw+6TQtb5/HJ32MFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828ab45df8-7a7c0d4f-8f20-4d0d-a717-fdb05a897dff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cd7f114bf8af8f3ca5776eee81a3a051bdfd4efc70d015833028a8e015e54c6
Date: Thu, 11 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660184452
