Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4CFB802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 06:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647929485;
	h=To:Subject:From:Message-Id:Date;
	bh=7m0yCTuYZq4NJBk+ZNHAAdCrmVHyJ0g/WIUT3B2BHkI=;
	b=KZYQJPYisN1M13CH0I2UwXtR7+7TH/6jprZYjxltI9qQTFB/O4sWEaKuisCW/hs0
	bBSM3/9iA1zIZmlDzOiGa4eKiPwtkD22iRMJw919EzzyfkiK0vOB0I05Clz4YzW2mC4
	k36QrroQVGHB8WmN+IMCFvJ8hs9CNfmPGX9u9I8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647929485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7m0yCTuYZq4NJBk+ZNHAAdCrmVHyJ0g/WIUT3B2BHkI=;
	b=jyv1ZzUGY3wmpZ9EQYlVjyOyz0nl01STN2/vFNxIJXNmEiPac0oz5n2z2vkk7KtJ
	WjZ5WPjZ7K+Ql8qi/NUAZKMi/2FOLLhPb+5VSWFM1Hu5IRGYi9v2TNIOhbd1ZKg2g2K
	DlFTkfahjWoBl4O7sAZ2oovCOJb9I9o/t7jA2uRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb04065eb-f19c3fbf-cd3f-45c7-815b-dc4faa1486ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7406b54218122280dc4d86a6f3011f543295bb1ad25b989c3f7a8744eebf043
Date: Tue, 22 Mar 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647929484
