Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A353B29
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645113685;
	h=To:Subject:From:Message-Id:Date;
	bh=RaHRuzbYawK/hMAx+lEgn+XevP4JOgnu+sj8rWqWzWc=;
	b=XegiKGqzJ9BMLUG6JgVwCMNLy+HY8E9WjA++53CLOgZGrenvZ/fypBt05Dppm7Eo
	+uekU3sZlXJUWi534Qfv+hi+oUzOjliCfrs1S/dNgNNNeno1H/hX1T2w9cSQ3g1Ogmt
	kebkIKYKL7glbW9LlLJum0SgVEbkWLAd2UwVUJVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645113685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RaHRuzbYawK/hMAx+lEgn+XevP4JOgnu+sj8rWqWzWc=;
	b=ZJDRUDgAOFXXvOH1+J/+AiWPBgyFm0RlvTR2cb/MJyZMnEariE54SKjbeia7L/Jt
	1Nb7dzWEaEEEG+4+vRc/dUYcw+paOADlbxGMEY4jfBhph6CeCFha127GM/O7/vDKCkx
	rdMfuJqMNKQ8+kHVD9C+iq4Jf/Gw/7S3l9n1Z1ss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f086ab37f-0d29bd21-c95b-4ac6-9ff2-fbb108f067b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57a2b50a831390e5da0c0fc37a116ecdefdb2ff4b1badf6e64c36fe34909b81a
Date: Thu, 17 Feb 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645113684
