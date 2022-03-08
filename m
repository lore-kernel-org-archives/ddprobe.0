Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B082F31
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646716885;
	h=To:Subject:From:Message-Id:Date;
	bh=0vfhGU/awBIs340y83A45y7P5g/5Td78G2MI2eJwkeA=;
	b=PJZKItMROzmpJpsM2SrZBVtP6wDoSJ5oHgpjF1ISKojZB4nm6oEUcEN4XwcNOV3w
	GfdtEcV8BNhKB7RpQG9Cf/fUjRUXEferb40h2hVJEMs+JHODeAU7+TnX7uM+WOwh/u2
	o/LrDoOCC41UxnSfHYxaDcqXKYF/Zx8StXttEi70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646716885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0vfhGU/awBIs340y83A45y7P5g/5Td78G2MI2eJwkeA=;
	b=ZWjWVTujITgPJQSVryrsF8QP95e6VyDrg3TIbL4ezbDeWe2tms/KzGr69+GvmnO+
	rMG9GQH5qXkHLfkPwnK0jx4q2b0iagJ3PVhc+OtM9+cc+Sj6VyF+PJQnOQyLOjIQC0n
	UoaA/S3f088QNuH6C95FNVXDQOTkgIYFA1ZTXXBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f67f99703-866e0c7c-6fdf-4026-889a-41437a7d3978-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc81ba98f57ce12ebfe2d3cdf9417a532d174736cd4c1b8ca495464af6fec346
Date: Tue, 8 Mar 2022 05:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646716884
