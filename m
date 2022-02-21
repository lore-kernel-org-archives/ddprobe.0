Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C8829A3
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645450885;
	h=To:Subject:From:Message-Id:Date;
	bh=C/2SYpX5N40UwePGuz+r2VrAgHkPgWhrgMyn+N4kehk=;
	b=cUvi62CsRNsD1yBNCVANsu0z/d/K+rg9DuqmSsZv345GxZ97LTwE9x/t0qpPUprn
	RazfpoIbd/p6cPwDGu51tPK2ErhXqNr9LGuiypNeZa2ErdFUAmAhHN1pWRcqkXaIw9z
	CP+f4amUr68osJZjj7mmc+dpmCxzxkCbTuxeM2DM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645450885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C/2SYpX5N40UwePGuz+r2VrAgHkPgWhrgMyn+N4kehk=;
	b=WtHyR9gmBSzral3lvC2mxA14LDGdY/NNuIl83Ao3cbhST5RGRbdldx+TItvq2WjO
	st27O12N/s1G679mpwXYJpXJ+VcFf+PEBhCt2O3FypUwMxeNEQ3VsHSxMHPaQhpEiqg
	oyzS1hnQLH7Y69mp57pj9C/I9YFLWtV+3AhwXm8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c83f73e-5ddcbef0-c208-406e-b767-92784b9f2cf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 254c165aa23b4fe231d9796e5894668c1500e9afdb37d93ac79a0347d82a0ac5
Date: Mon, 21 Feb 2022 13:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645450884
