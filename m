Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADD27B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658284012;
	h=To:Subject:From:Message-Id:Date;
	bh=OY9gPfWTMoc9SlA0FaRG33f+Q221kdIqNRlOwaRB3Mc=;
	b=Va1HkenR/nved8e/oCR6VCeBsHjvgHbfVf5dAli7CRTZMUlDGyxPyY1DgMGwwp0w
	1tFDMlIPAW7BGjeNZzPw4YjETGmx21MCvdZ859OPQdV83uveKCbwWrIuqdU7oew9Q0Z
	/YwDRSqHWdxvfnAXNDDagRyNsU1MnP6V+QKeERFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658284012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OY9gPfWTMoc9SlA0FaRG33f+Q221kdIqNRlOwaRB3Mc=;
	b=kxw2CG73yjZTnk8yeAVRVMaI6sx/N2thBxuMXIG1dyLVTAJrN/xNbIGy3+cytU6h
	u1QBLnNu+/VnXZ+mqx3Qd/bNFDcJP2VVLzHmuKv+Ksj4+8sBxZtVT2uxjw41Rjm9OAc
	A1naWq+6FdgTrYqkPq/ggvqjCVJ1/jn/9yI+uFAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182196df2f9-4d285661-6573-4bcf-b9dc-8168868ad52c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f8e834fb79bd282b5fc2314b40859f67835aa15efdf35c3eb5c52de019e8cf3
Date: Wed, 20 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658284012
