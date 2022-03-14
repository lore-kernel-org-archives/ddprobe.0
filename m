Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A412F3FEC
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647285385;
	h=To:Subject:From:Message-Id:Date;
	bh=gxm79XXeFkdEmYJNmL6Vr+n0HrYVlRUp3vzclim3cRs=;
	b=NHyLCPnGSS9I14xl/P0qgzYohbZjbwyuSTxvw9Rwuw6p/5dzMTQMOoihyFBn4UlY
	6bWmblv0Am2WddAbtTIL7JHQANCEYcEvKFJ+nWkjhmN5YSPdaQ2ooldGMYIteZy/HyB
	XLJSr0FqfQG84PRVB8+FEZT+y1trlrkO+IHS0NHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647285385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gxm79XXeFkdEmYJNmL6Vr+n0HrYVlRUp3vzclim3cRs=;
	b=O5c/SeWg1+J3CoEuzOzxM3R+bskgsXRfL3ECY513hwyh4NqO1qJ/WckMklHW4IDE
	OlUQgn2XgMp1piyTqDHJqZmIa71P2HkAAy6VY4XrHqadXRXgT2QwjhvdeT20V3B77ad
	YLEfvzS4ndgsSsfYiuB50YyZL9br398z/T+8+2Yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89dc3644-8ab953dc-2c3b-4889-82c9-76ff4ee4aa04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b3e3c86f5052c42a2c3d81c615601a9eba5cac7949de3b6334015ae912db2ce
Date: Mon, 14 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647285384
