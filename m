Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE71B3B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645880485;
	h=To:Subject:From:Message-Id:Date;
	bh=bOfW0ewrTuHJcZ9IQwKVvnT0OMKf3gWjEDmIkIN7mhM=;
	b=kmA9lpeqqzuyMhtZpP/A+x3H/PuOP9JAwIH+0ZpuhP7hO/kSg46GAaQREnQQEyh3
	CrvYVTEL9CWNiRZaRZV5gGScCyIH8NjFbJPAHG7aUUDgWhw/FgcuJ38Lm2riMU41bC4
	SBZCP27FYb+nQ8sZ/Di+7JwUIMCU+lQu3kGKoO40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645880485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bOfW0ewrTuHJcZ9IQwKVvnT0OMKf3gWjEDmIkIN7mhM=;
	b=LibCJ3kc5zj+DtgeiigEL1RdEIcg+IsPj5kaI/JC2r498U1SFedLYXa7Pzj9UjDa
	m/Afg6mkc3hDVv8nNf3/+TRpEgzBCS1z7tK5owkfWk7uw6mPW6MdCasE+bLLXV5CNzZ
	QXOmtS4ICnhdhSaRqT5wVHliYkadHtUjgUj2pDkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f361f241e-bf68b89a-69fa-42d2-853c-a9e99c7478fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6abe72ac1e68cd7a2335e695d17514e81525724917096670f4f40b9c90e5e531
Date: Sat, 26 Feb 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645880484
