Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A61C7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646222184;
	h=To:Subject:From:Message-Id:Date;
	bh=0dxpgQNmDpnZ8U52bbZnmH/9EkXUqSXqRjsn4fuoo+E=;
	b=VxxoPn7FHTbWKLvOenalYy2+vA3d3G4FL0kQW+RIabMdViv9skQX5kSsCFaI/Cw+
	ssYFqYj74ictle/RWln1Qkxe8XtQFYpC7K5v7z7puSdHmztVwbK9SyBnQccIFTztJqu
	+UsNG5vycbJDz31B11wbMGESxSahzRgzkNxBOl/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646222184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0dxpgQNmDpnZ8U52bbZnmH/9EkXUqSXqRjsn4fuoo+E=;
	b=POpa9z0+PLe9/70FLurmL77Vd3e7JFodtP2BoMgnrvE+zklKo77+cHTExiwZWWgF
	yIN2WncBy65qxLnly6L84P/MBFjrr0LcFrGfmeziJ4mQNP+pHQ1j2BKNn5Eg4Cef90I
	Ln1AbDnJB7p6y7BWWibYj1iiUZxfHTloIwxGi3pQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a7d1186-f8b5c819-069f-401b-8398-b839dae0e07e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df96a444db8fd50d979374d8e982403918029c111491b259a39b56209c2b4797
Date: Wed, 2 Mar 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646222184
