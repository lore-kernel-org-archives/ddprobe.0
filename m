Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2B97E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646964385;
	h=To:Subject:From:Message-Id:Date;
	bh=zbkFpZaMJrgwbuZzbQpALMEeZhNWfAf/gSLVGM6RVCk=;
	b=aw6ajQ0aij3V2W5M9YiVoXrsIboZbxIHOY09ZD15iQNf+QSgpgid5lBavTTMuB3/
	yL4//8xK3atxxZyJpXCS0Rq1TvLrgxYJrktXoUaNtBpc9/+1dmmDC1/2dKlj6xOBgPw
	cNYDmcaNDdcdXalKhw8/AE8qWheTsL7k1W9wDlyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646964385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zbkFpZaMJrgwbuZzbQpALMEeZhNWfAf/gSLVGM6RVCk=;
	b=k+z2+j6mtjF8lMEL8sSKcT7JXTlKUJ7DWGxLtio/+tJbxp1GrQLwbQyStOZunFGU
	mJYBX7hdhen/tqsctk0g/6ejDCMDPgVlNuwo7PTFsax86fi0EjwvAMCvsMd8t9+wk/6
	4Gr4z3qiiBJLwKfrEOKbz9EXE5Xdijde0MGpkkc0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76ba23dd-2c98d69d-b800-434c-b6c2-1d71aabb8bdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c511c011e72ea56bae80556c20560afbfbc4098fe8e3b2939b226cb41330ff31
Date: Fri, 11 Mar 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646964384
