Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120DF2564
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 13:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649337058;
	h=To:Subject:From:Message-Id:Date;
	bh=oJs8sR99UJsbWI2HRuS6mg/338oVFOVtbEnrENrXIu0=;
	b=H5NR3/6dfv2saW6+cIHDrj+BK6sUprPhGzCoLmrj25fWrQF2QCQNCVd/hN+uJP8V
	hvziF6SIkL+ZIo2OGU8+c6qo6JRhb0UuE/KmYb+rgi1aegBMHtTMHbg4r1UfeoO5KlO
	3DGV8yEEIpGw3QdaKGuGmomF52LELq4iKxqieyL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649337058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJs8sR99UJsbWI2HRuS6mg/338oVFOVtbEnrENrXIu0=;
	b=cvXlfAY3rwXfpmylrhHOINiJsa6xkKTCE0SYCgmmBo+pGEtW6hE1NVg7txC+G5l6
	k8eE2nM0CSBUes8QETp4BPuNWqaMtZN4uBAPE1vbTsBBJQHbQOdGuNcOpONcQHpyJrz
	L/SAn2UEA03+EIIXzwp0hR7CkDlYqyx5MN72hcZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018004264401-baa7e0d0-a05e-4cbd-9f91-b68b21216828-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c260679220bc292efdaaf7fe777cc5f23cbf1343313ead418fa3b78ce4a61fe
Date: Thu, 7 Apr 2022 13:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649337058
