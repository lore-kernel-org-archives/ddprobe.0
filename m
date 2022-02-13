Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE8929A6
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 00:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644713422;
	h=To:Subject:From:Message-Id:Date;
	bh=Gzui1eXQp9gwoCimPN30lhR0pHcwiLJ+1MZKmCOYCG4=;
	b=hJ+m/7tYc3aUN4cAFbMVEgh+hZS00YzclnLE2PhKuPYDtRdt2FP++w5bq2FDJ0Nn
	aKRcWkOt0ciN7w4iN1/QpimNFJn9Xry4YSIZHWWXsaFlKX8Sb2dhP5GnogdcT1w9d0A
	mn1nE6HnSrJpJozhrwxpoy9mO7xBB01MDCYwRHLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644713422;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gzui1eXQp9gwoCimPN30lhR0pHcwiLJ+1MZKmCOYCG4=;
	b=NFzK4Pfi047/NYwbSpYPBhp/4pHqsE787mYCTX0sTE1rs8LJpuYP6qFFBK23stuz
	FBEh7DPPjyhUf6clEe2J5C1QW2GnbAF16QGBc9iR6lzFoZKUiKvm27Yjkzy8b4/endq
	41fn3GKkmUFOA24LHSpUxVdUu3eHXR/7kbNcXygA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef08f2c92-c1bb6675-832e-4471-a129-07f2842617c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ce8644ac74dfb9d1095dfd258856d8657bfe53aebc05a43b4feeebb14e3523f
Date: Sun, 13 Feb 2022 00:50:22 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644713421
