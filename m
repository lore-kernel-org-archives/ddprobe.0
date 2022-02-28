Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB39453A4
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646049385;
	h=To:Subject:From:Message-Id:Date;
	bh=Bw+9aQzzrmDR8HOHTMfpopmT0ZyFI+PEhLQljNgyA2w=;
	b=AyQGmMkUekleZ2H+HiX4/ldgce0QcuUHtKUt68qhBBesFd74zkJzU//yjHnnhKpH
	i0KvgX3Zh++ixrjwk6cF6eq4F5CBcvqlBtM07BQY3pHFcG7oU3YMac7tbk6cMnTA6+j
	ULckYgldCbWyEmNxVTaVQTX0tNXLAoWh+EkwBb7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646049385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bw+9aQzzrmDR8HOHTMfpopmT0ZyFI+PEhLQljNgyA2w=;
	b=M1TyIKnTKQIdokfucxgftLAc1+qEI6t68UV/CGvRHNqSW/CQDszFmSTEh0x5AWXe
	fhpgESUZmj/gPQrs1E6ew0E9JqLvi6Rql9Lb0G7kOZipOKpG1n5bK0V6dVjgylh+kS9
	z+fVR6/oZ9zLS17hCifUR+1TM5B2fYOTFx9PsRKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40305923-1ee5b9b6-88b6-4e1a-a038-19cf328bf325-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7efe2fac53024e1dcb7231394d5c8eac25ee1a60372b234d46ece843ab25e4a
Date: Mon, 28 Feb 2022 11:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646049384
