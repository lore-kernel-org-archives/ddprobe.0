Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D1618E
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660092653;
	h=To:Subject:From:Message-Id:Date;
	bh=Yop75k96C5AH5lRxrYws0mYhJyNFSd0jVWuzuUrOXTI=;
	b=VR50YrLUEbmb9Moul8GGhsF0SP4h6O/1RrwewLZZLBK1zzYxx+1HWQQcb6a7s+zC
	5BMXtRgKsb0smPOqA2GmmIo0rnNrS/Ahe5tzKG0RWMUAL2FbU7bJvQ6/cO/vkE/B7Mb
	tSIosKyE6Tp7cyGoFTfSsFT6u1g80feJPjbstHHc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660092653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yop75k96C5AH5lRxrYws0mYhJyNFSd0jVWuzuUrOXTI=;
	b=BqwVJTgngeZrB144Rup0OhrkddL9bAe7Ei5+x70NcoDxV2vaDyGiyYlQFcnaxvaG
	SvENsCpMCL4hvUn6Yxr99I2U6QKMh8BYhzXvmPsOXApVIeSB5yBWUZgrYqMtJxYrP+W
	wqv2AKJIXR2tWe8vhzhGuyUr5V3uphbyT9JU9Qnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182853b9c5e-e3bc8507-d527-4684-ae51-7a9d30cc38cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 398a60de73568636946dda72a42b010ec47d10304b4dd4dc9736d8d1cd6f5e7a
Date: Wed, 10 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660092652
