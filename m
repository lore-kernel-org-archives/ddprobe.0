Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708637C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645803684;
	h=To:Subject:From:Message-Id:Date;
	bh=5lPn0sUBWWDPlh/157uKjsycSQfo9Weq8ZxRHnUVEw8=;
	b=laKbuS/IVxS2s2rjIsqbrzELNKCiTivIfHXFULsDogj8qGnT0cMjZDr/+zqRrHfO
	v1zaM+w5Xg2Db1VotSd7kQG6kLpGdwoLh7J2cmBYHHJs5s6gMhwU0u/HZDfj5qGlCrH
	pHq0o3G/1EHbrsjIzDtsJ2CFoMTJYZTpn/dbSFpc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645803684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5lPn0sUBWWDPlh/157uKjsycSQfo9Weq8ZxRHnUVEw8=;
	b=Bx0hOnLCe9Kge42v8s3kEcNesncVkQ+1P3JvW8OPFsdbJPHpeLiutvMK/qojKcuF
	24HriEv/Zi241PN6ye2dzWXF5OSspvw500wOPJgfT6mdJDW3WePhA0Sf9Gt8tvCoZ0m
	VEh+4JObiIq62yFPA+f71MDk0Sy8JsmKZ9STTJ+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f318b437d-4f8d3546-ef6d-47fd-a034-d6d81aaf21c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ef04d06d168cdd31e880c4c6b895cb7b651c0ed8581e569a5a03ab8684cf544
Date: Fri, 25 Feb 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645803684
