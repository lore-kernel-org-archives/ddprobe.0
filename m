Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF173D7D
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645099284;
	h=To:Subject:From:Message-Id:Date;
	bh=mAC7HQfRTeoc9jiB0qUpghVDyZchRSvS0ngj+pcp3VE=;
	b=jsFPFZm+zq73VBWOnNdUcMWYAOi9Cb766YUOI0a8uvzZyOBZ+zaMriBO76/mtfSJ
	3IrqPZnA4SMDXfXkBbGyfVZZ2wT1b0fkCgZXlK3mh5cljGntWmjMHW7fPFIKPPybkXA
	S8YEAy7wXdm0COnblfZ3A/KXe8unPsadd0aeBIjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645099284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mAC7HQfRTeoc9jiB0qUpghVDyZchRSvS0ngj+pcp3VE=;
	b=H+itWYsDLI3oZBqRALagpDaTu1ktdvkp6WrqMVGGup1omQscRXEKAc52KbROacKb
	bqL5hSILeQhkQPGzpNxs3NuqsIHcujVweTsojlGv39YRKqddRIylrQklC1LIVYxHJjB
	Qc1PDP3DKryCVWW9evSa7ZInfaetLJUTDwfTvW7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f078ef90b-97caf98e-5cf0-4f50-86c5-c98b49e110fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb0bef45770d82b22fa78d02bd4c6a7e19a4bfceac987d1ca2e36782b16d49fb
Date: Thu, 17 Feb 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645099284
