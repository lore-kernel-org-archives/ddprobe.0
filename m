Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B916182
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646102485;
	h=To:Subject:From:Message-Id:Date;
	bh=6AzGcSeYFWbShF2W9v5nm323WcKF7f7vD7gTSRzreB8=;
	b=bKDXCrtBYbxzzq1/BLIe0EOKAR6BHRMaefRaICPKB5CfmUooQ7KN+YN197fBtLzo
	p+Bh3J0nR2s7tJWNiVi0uLZkZpdy3627pNWX8yixl/dE64U9KFJNy2ZQXeNIH+Ng1uP
	T8rnaB84+S+Ssh952X3h/NroD+FxPuSNZwQLc7Cg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646102485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6AzGcSeYFWbShF2W9v5nm323WcKF7f7vD7gTSRzreB8=;
	b=SPGs+nW0xTar92DiY50Wpt69g2zo13WWAu90LD2Gfq922ZCSMlWpJ2suA8r7hx7O
	kvhrDjPY643OwkjnJ2F+Z81k82hUBNRLg2BGMQ93W8O87ivXXYbyu8FCsWf4L9l6VL6
	YF+YbrmISVRYNxA435/QFCQxsZL6WrEw2oq/PxbI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f435a9740-05dd8726-340f-4cee-8288-d748942a88e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74d5a9a81c7a23d4c665bc19be9019f576d7bc111e0639ec2c471cfc8b41d0ae
Date: Tue, 1 Mar 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646102484
