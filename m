Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6691388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644925884;
	h=To:Subject:From:Message-Id:Date;
	bh=6zK/kZvnpNhMm7hCqxKAw70Esy3PqsWxe2dvU7W1aPc=;
	b=B/OcqQlvPumHjVkzWX0EHRSsPtq/OmqibgxWuPy7Kd3VQMYSE2mTI6llZH8vx6Yr
	56jyjioBGlwd+1nzvUx48XC2Ln9kc0QlYH/YP94a907wvFUwQWZq3CvBDzeiySFfmbd
	5SoQEN6g75xs1mcJLsAKkqPgBqd/jUJTvwMGI1GY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644925884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6zK/kZvnpNhMm7hCqxKAw70Esy3PqsWxe2dvU7W1aPc=;
	b=LFBteZ9pDvbrd1ArXvtaHAjsd3uFPpSaeT/+GVkedMX3yEBaM7mzXs0graQ2aJSJ
	+LAi3uwjw254nlKyZxC+HNR+N4ma/yqndLmlsHIgKEsVorkrVBQHjSzUkHCGdXWxGBS
	q+KmdvX3sl3r2NuJ8AhilEa50MpgmirDU/ZCPVcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd39193b-5fe80b2d-b1ce-4a90-afb9-974b5c858fb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49eea7b325baf19d30879d36d8440fe1287f57c429f00aaee19dc213219516a8
Date: Tue, 15 Feb 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644925884
