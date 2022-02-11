Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CDC7D
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 20:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644611897;
	h=To:Subject:From:Message-Id:Date;
	bh=t1TqnCOuqNDYphUVR1SymGvROnp/kWol5NnH1pNXZ4Q=;
	b=XCj6LkJuSrwvCaxcNYcbH+6MfDEL2Ix47NrVhNv6Z/bEp039RWHMYq8hAlYBO2xv
	81mWUWCyFM4zx+EhDg2MMy8nltxUxm8PTmtfQld1bQoM2f3p2ISggqOHd+t5ftSs8o9
	V1z/c+ikYRHOqfAoi4Ikwf+EQwA1lMnRywGNP0dc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644611897;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t1TqnCOuqNDYphUVR1SymGvROnp/kWol5NnH1pNXZ4Q=;
	b=eTAdQduFZF7/7HyPbOx2in3UWERwoAYMzL2woTBF/yiPA/Mfc+6FjI723SWo+FJH
	6Gj6old7+owtB5RpIAl4Q3C1JFUhsbwUuQnO3kCpHsvM0D4wcvGL61oxqm2WPDUXuKQ
	gArqd2IxQ0y6JiFqAzjMRZf14J1Fj/3Uerb12Abs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eea820823-d9acb9c0-2945-4307-b898-adf85982021b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ec6af415ce90d844198a1edf95a513eed19fe71dd07f2a6116b20223dd07dfd
Date: Fri, 11 Feb 2022 20:38:17 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644611897
