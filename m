Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19233B21
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645875985;
	h=To:Subject:From:Message-Id:Date;
	bh=BNerhKFCYl6mWFWUKhFi73G3aso4kVUa0Rj9HY1AsFQ=;
	b=gLMAtnYgd4fUXh4nNG0d/LV3C2A0dy/XBf82je1cSZmNEzSUNUQAQdCOtsYqPWzl
	GZQ9hQ+riMF0Ly7jVClz2VF1GrV+AzVUuvCJRylZVTkd+gJL6z2bVAig0ZvD4i6bkfn
	sOmKIisejXd9gF0Oor6f9S0CUs9olehc5ER9olWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645875985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BNerhKFCYl6mWFWUKhFi73G3aso4kVUa0Rj9HY1AsFQ=;
	b=VsaVR6OQ/WepCZnHdx54rXd7eN4AH6Lt05EilBGiYyvYFjfoOqzoSNr2hsXG0I4Y
	aCV/vgk4B01s1S3d9TB11yjpKejAdoZUV95qXdKGBV5hdn3X3vE6YVlQ2+O5iQ0Efw3
	rEBJdCUFA+csfC/oahL3wMNR1RaXr8wzYRZkOuGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35da79f2-ce3fcdcd-80cf-4fd8-b5c5-ce4ce8b23c95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecb21ce53e5e3055289676aed0f951e49b6d49f5d08cd2b60dfc856be5d1cd45
Date: Sat, 26 Feb 2022 11:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645875984
