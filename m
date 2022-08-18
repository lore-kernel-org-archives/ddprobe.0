Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5011C15A2
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660782052;
	h=To:Subject:From:Message-Id:Date;
	bh=uHOE7AW2DDMqc7ir0gREaETCaGIsNo6p+nS+8nBGI4s=;
	b=MaXDUosO8zrA2T7A75I81KWdl5RVwYmlyRnC1jyXc8AcvODKMAI4yoPTIy4oVo2e
	6G7PTTVxcCqM+Uzi7vWandmJsT0OOWdLWsYJhDdD3MLjWcUb1Yc5z7rct3bJWNRC03H
	aI94/rhO9cr8JnkEiYagDow1z+XwK83eRFtjSYNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660782052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uHOE7AW2DDMqc7ir0gREaETCaGIsNo6p+nS+8nBGI4s=;
	b=bUbcsN9OVXGBsH9mwW12cPNX2ZTQqGVoWTKNQsX3sKT6onu6FBhCQ0RpYG1+3kLM
	kkOTPRCtxUs7Wv2/nL9vxr+/2zdwgjLTxzo+QdOsxC9rA9sxzlq3gIVw/RsXxiqNqwl
	IA7aHca0UKf0qhMeWD1DmHQVrthAG6AhcRWk5PqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ae5304e9-1b6c0164-4823-45aa-bb6c-efa7fdc9477e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35d4a05b4d37cb5801edca91d52df1106288ae6bd07962780e4746a2d3c11cf6
Date: Thu, 18 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660782052
