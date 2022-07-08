Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0AB57A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 00:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657238812;
	h=To:Subject:From:Message-Id:Date;
	bh=UTgxOcZWcEBrHVo0jGCTK9f4m3UN7XHbON45HMtFLcg=;
	b=eFt85cPJr2zEE2dJ9XSJnm7dXjrQaQ2ZCysNZ+oKuWK9XhrvWvLQuQd2kO/usXz5
	wC/Y9H2KQi9g5HgqefdA0aicQiL2l7PSpIpxNykxuysLgxsZgSeRYkOYsvCHat7YlCx
	VRdsIxC+hotWFnauHJp6wd0H8AP8vHosXBiAZllM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657238812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UTgxOcZWcEBrHVo0jGCTK9f4m3UN7XHbON45HMtFLcg=;
	b=fsSFAZk73MMe7mtcspnNxA5C9cVo29SBkp3z+NuPAsX8Lheip7IU1GkgPOvVlwVQ
	htPbDVTFkOiiCz8eXkQFF6Fzc3wsCR2mmEbn6qqy6nABcc+IAYEGiJNzJJf3A6VpzDM
	/PlxoDB0qz3SvZXNblUG+WdGVvpFSzk0DpziTH5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db217670-b40e03f5-574a-4ef7-8206-ed956860ca38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b13aebe79049703fec8064e069a4742a7f49bb030296bd421bd1ba07271ffecd
Date: Fri, 8 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657238812
