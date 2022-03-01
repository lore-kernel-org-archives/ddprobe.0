Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52685CD1
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646156485;
	h=To:Subject:From:Message-Id:Date;
	bh=FnEjc8gzQRsZBVr3ARTRfmGxYbhnN7umxVc0Ng10JXU=;
	b=Q9gc/DN3EWx5CQh2BXYcVAUMmzjo9M1jzntKcSVqioBtpcWG5vA+z3oPlbyToOaE
	FBNqP8L9Cl8DrTCuhQMAiBpu3EqeuHAibpngYi4333lxD5UqbfO0iY63CHUQUISpJ/F
	GtQ8+0UI0aFxX+EtJzZBKcN0qxiGY2repGKM8T0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646156485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FnEjc8gzQRsZBVr3ARTRfmGxYbhnN7umxVc0Ng10JXU=;
	b=LTo0lSNTGx8boRpqh6c+hFGdHeLyY2A24riWVeyRjVZf5EkNGPMboAKbF+GKZuAB
	MUpNDYRlARSOT8bWLIq4XsefFJA1YzHew02pzwVkXnQIf6fEO0gQ/Z6NwCrQyPjFtri
	ul+RtJ88hhq+IIKXbix6lIoyqNY4BBvTioLdTMyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46929093-797bb1a4-4655-4b52-8d3f-16028da0a9f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 183f875123b4c6aae5c3ff563f72f20826eda920de33ad4b25984265e547be8e
Date: Tue, 1 Mar 2022 17:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646156484
