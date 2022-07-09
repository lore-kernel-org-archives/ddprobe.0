Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38040ED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657371412;
	h=To:Subject:From:Message-Id:Date;
	bh=Pau0oJ3amAs+Bw92BGi0hsrh7wEpr6qlCmASk9O1axE=;
	b=OyXAHFAPqUQezfv+XRBcutENjUiq9k/2fjsM/4z6yEKr0E96/TDTs1cs/Rt6k0qP
	x608sL4ZEcEIfGQjKvjRmCY4r2mEdoLt71dSq5tw2WBzXMTHTCsgsmgWr0Uu7MjGRxY
	SoXej5nEgZooqmytxZ6JOpUahmMbhhyqvsC7ZUx8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657371412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pau0oJ3amAs+Bw92BGi0hsrh7wEpr6qlCmASk9O1axE=;
	b=M7Ylzp8z6jFT6pNyQ0I6Fof9PF1KNviljVAS/r8gp83WJDuqpe6xgVO9qcjfSM4/
	ulEMXi0rfsmuNtOsVdcA19ey4WwMUgSHm/AZsLMgdfbCQoZHl/6bwbvVHUVK8w2QhuG
	laUgDp+UR7h60uOlfENmHXgg+dxiIh4FgHf98PTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e308c7a3-8b19d83c-28ad-4f3a-ba20-fd01c10058ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9379089138c347f5e0a0d43b9003d12c4fc637867bb71acfda7ee655cac857de
Date: Sat, 9 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657371412
