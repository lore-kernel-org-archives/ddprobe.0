Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7644C17C9
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647788484;
	h=To:Subject:From:Message-Id:Date;
	bh=a4kp2+r+DOuV7t9STTCp4RJcItbQ5RCkO7biLRRtwpE=;
	b=Z2SJ50TjAfEEFfu0LImSZSOJ3sNsec+k2YdRJi1N5w0d2SUKDCI7s+2UVL5YUICy
	p2zixb8gv0icD2rNPKzBUN7oXOhhq3oj40SWRZkpOduHslC5FtczP8dTdacCAxoQURj
	/0kaeFA1x8BZYacR27QJQzsZmfIolwfSUQ/e+d6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647788484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a4kp2+r+DOuV7t9STTCp4RJcItbQ5RCkO7biLRRtwpE=;
	b=FLwv0nbjANvEA6UyaexB3SrX2gRz0+ow78l+00GQyPUPnbcMsGraLsFFT9WQqxsp
	ensnPYIb0xapmZ0Lx/CafEV2xAjy3+IKG6U31EC3MYql19m/IfYNK7KHx7Ev5I5G4us
	4B8yvhxNQ3Jok5ACEjIG3NDdYj0030FRJWa1wJvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7d8e8a1-fe081b78-ef05-4492-a935-4172457fd996-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: daf2915db53f790612cbfdfdd5ba5a883aa095ce2fb0f52fc8bace27ca8c82ec
Date: Sun, 20 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647788484
