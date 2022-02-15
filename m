Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9586CEB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644883885;
	h=To:Subject:From:Message-Id:Date;
	bh=BhriycGC6x9ICJ18WnMXSsr0EMb2O6y0QggUlWWGLlI=;
	b=YDzehzXdMPUsVHJuE8rB7Ez4llyt/+3jQPfcj51YzBjF+2K5ulR8kkV5Q4eCrFKs
	0SFJBflXL/TYVNqk/NHLjfDIczg6m7O/RY1EApXRFx1oNuh634lVkoc5gccrfUGGAjQ
	K3aW5xVHt20rMD876VMNY2h6uYrNhtwmxGqUtRxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644883885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BhriycGC6x9ICJ18WnMXSsr0EMb2O6y0QggUlWWGLlI=;
	b=Uo3S1sqyvFOA0jOQ9Mop2NvY0FoOfFGmSYYgoVue9RYMc6M9pn2wPnfmUJGQuXg4
	fxytY5B5pdhNTMhLy362XCz29M34vg9M7s+pdbdRQivc/h0XPlqOUpetlcezc8Ofmwm
	LTk7Z8GBG1jLwpF22csEjdTkuisE2LFvUX81ipgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efab83b3c-6aae5d94-a768-455a-931f-9356ccc06071-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 804ac9a95ce267b15d17983d4986b1cc02103b20d1e5fc731925984e68310cf5
Date: Tue, 15 Feb 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644883884
