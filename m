Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E0427A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646880685;
	h=To:Subject:From:Message-Id:Date;
	bh=o/w+h4+odtn5EG1zBtVFmGia4Y9dtCMQbUqQTe/VhLs=;
	b=CXo9lM9QaYAMbrIzemPfPqQoVGMhFWvPsqNgWkZMpPhK2qY+gdrUR3AJyjhZCURV
	PTNE3+rz4ENw4TmPO6A2q6XMhI1G03MnPkz6dops5GkXeYgQwMNrPDhTGAkPq34RG+b
	kvwi+bCuPpK2LzCdYu8r3nk7hnfWFKy/D9DNKvy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646880685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o/w+h4+odtn5EG1zBtVFmGia4Y9dtCMQbUqQTe/VhLs=;
	b=R6O0z567dipjkvqEiYgrYC6JnFWMmnHjrp206nlbMAwGjQqz5XIGzXdF56IbpOkO
	pHAEpCZo4ixRRd2j5/KCAlwqKGuwXaAHGVQz012tld5ehXYttoDA6/C4GqVXMTyRied
	LlC4qU/KcWR7tCLnNaSUBicrbbxICQFFoHErEMJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f71bcfb06-774d0719-b4e0-47bb-bf5d-a0cb97c37ae2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1989475a5a13cc3f22c681290484d53b9ca141587e788a07045292d32a0f5148
Date: Thu, 10 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646880684
