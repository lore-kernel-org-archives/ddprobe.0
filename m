Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6025D622
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647148584;
	h=To:Subject:From:Message-Id:Date;
	bh=pE1WDxJtPTvwxP+KbI71nsXF6v2quBqHEHIO2IXUjNo=;
	b=CTcvg7/f1DtfKMzRjGoZxCAq0UAIn8EBbkRuiD1b8wG7W0e2F9FUz4dPYJXlfGeE
	7RJkp5jtzgud3IDYtX+81yvva5XbKTQdwhPgZ0PnoXPwZt/TBnUwhClRlTSfCtg7Onx
	KqAlf7gpL6AM5PlfbKg7r/DAnTMTYkZ8EMlayPy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647148584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pE1WDxJtPTvwxP+KbI71nsXF6v2quBqHEHIO2IXUjNo=;
	b=EfO7mTMGetlY0f0BEWxp4MgtQQSIhxAGccPTlIv4W0WMBqH1r9p8j7zqiCxhPlHE
	lPk+nIzAl7Nqy2sM69zKLrTjWwy4imgRKgwGpzScDDlU+XkzuOBlfxK/3x+8OLA5+BL
	qIQKUD6P3t1A+t5jSqx/ImH0Gco4CJi+SB2BpKFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81b4cf39-fc25b0bf-e4e2-4e33-8e89-c577ad230c5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a939a90bf3207ecdbbd6dd7d95a99f730b576793fca21ad0270003d28b4a6a02
Date: Sun, 13 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647148584
