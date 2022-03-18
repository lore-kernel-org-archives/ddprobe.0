Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779955115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647629485;
	h=To:Subject:From:Message-Id:Date;
	bh=SOZvPDz5xzh2vl3Kz9wHRHBVhKJdKDPHFg+FduFnSVY=;
	b=QdSXCoksTps8hlDc9VY4LJWw6O5RZOHWWCq0lUYyPFz5HD3kNZSzFOGQm5z2iua4
	OtbL49yL4x4HssB5jzyk0bbRXpqu6F/Gnr+ZuTxxny9XkrGCLwBCDlxqw5b2/Qooepg
	Umzcvzf/qRWIjb9z5iNrjABsb61Jo24yHwvfc14o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647629485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SOZvPDz5xzh2vl3Kz9wHRHBVhKJdKDPHFg+FduFnSVY=;
	b=IWJS8Nco1tZYEnmQClPeUFVs0l2zHUqL7sMeZnlXfCOSW31veO+94880zDQWHVQc
	48qxqREklb2BAZblggwf08RgT9udiPs6qkPb2upea1K9+Te/WL7FgHMHgcduc7n9UhO
	1HQ70ujOFTFcDevi9uobZy7RmLUDCA1SKzr+ihhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e5ec2d6-4c7d8f14-c3a4-4d16-b9c5-58c175fd0920-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 632891cb6e504c25c760bdd0ba2dc2e0c82a8781562d9fe47cceaa52db73dd60
Date: Fri, 18 Mar 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647629484
