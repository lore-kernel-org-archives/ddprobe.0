Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB3DA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644866825;
	h=To:Subject:From:Message-Id:Date;
	bh=0dYldvhAPQRnuGiRR3roX6Fi0baVcoWA2L9++aVh5Xs=;
	b=T4QF4gKY/ce3d2tJCX7k+mBr0H129HcuTDABU3DCqDqZ5xF+9FZB0GVbAqD4132d
	fRJefNqcIYA6A4I8LbuIHAi7lYATLBYC90IK0PbkpDGd3u78ZAh+JSq3ymmYV2bGp+t
	U76ddzWkldcwLl5bT4EoHY4N5xTTXs1eF8Zi6stU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644866825;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0dYldvhAPQRnuGiRR3roX6Fi0baVcoWA2L9++aVh5Xs=;
	b=FeiDTU/C2CVmG4SliiD+rN6EWy+kIygU+v4wCL+801wTj4jgTbbsZOvpkf1X66IA
	7rfu4tYnk2Mwa0PJMfBvbn56HLZO5zap3WyNs+O3RmO3Mbos3jLvSpr1zSpKiyLlrRu
	A5b3bXs9/MlVZa33hz1JRphHXi3k124mNDUd2iPs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b3ea3d-150a0c0f-79dc-4baf-a263-63f7225e76e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b91554fc854b679636c5be0bd1d279e197217d3c6a6fa270fa31cff5f498e33a
Date: Mon, 14 Feb 2022 19:27:04 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644866824
