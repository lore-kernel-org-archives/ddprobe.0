Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94110C80
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644868285;
	h=To:Subject:From:Message-Id:Date;
	bh=gzeOWb5n7hSqsPtNXi4o6hufrPM3Np+XhX+ZAld9pGE=;
	b=iJWfor+uaJRrDRFG7z2syYJOl1g9VBC1PjG72SuYh6yrDxQIv0Fp8lbvnREynMVv
	uJHKsy94KuLdVNoWpynM+z2d/YkXiuZYTglTGFp7rZN4RACCdnQb/8jjoCSnvHaxbU4
	KHQAPLZwaF4oFO2CpjXqI+fuFhK4fZTJXoCUUhWg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644868285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gzeOWb5n7hSqsPtNXi4o6hufrPM3Np+XhX+ZAld9pGE=;
	b=alFtNJtZl7Ba33THLEgsEikefIrCKTlE3b5NVNLpOZxkUCbdDsGtv8nJM49how5m
	VbsuOgP7uqoduYNn0snNfrbkG0NBpG7fWm5dVi610x3/aWVg1OmdBVBUE1/nUR5N30z
	9Vj0c9UIgOmua4GQmA75KqIMDN70bPM48WQvIFJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9ca319d-2bb9924c-932f-4c11-9eac-a7eb17289a14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 825f9e4b9e4824a256da7cc24a7e1f927e524e4379f3a644b2608efd8341bd27
Date: Mon, 14 Feb 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644868284
