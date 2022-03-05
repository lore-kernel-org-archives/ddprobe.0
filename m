Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5AB7C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646486184;
	h=To:Subject:From:Message-Id:Date;
	bh=fgnCSfmgBc7VrGKqUKKN2o2d+HbPnhFRNej2XfE5oIU=;
	b=ZSEOTkxr595HA1qwbfESaCCWHULRcXF7DMKSrnWSX9vbA0Cm58iOF6vEZxD7MGn3
	9vkzJ1xJctYlzDUDXfsUJWlfawqV7agmuU2vmGeRuLh8eJVGqMLXVBUgh7fpM5qoPsz
	Tob6O4Flov4QaRW9tx+oD37B3thlBgvlkdcShRsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646486184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fgnCSfmgBc7VrGKqUKKN2o2d+HbPnhFRNej2XfE5oIU=;
	b=AB1z+vV3dl6jTyjkEVD4VhGnP1pmTWqYX89l/UwkzZzSXDfMjhf2aH4lESzCHbF1
	SKJdBB4KpVFbbrl5WVpkn+bFquEkcnFNLfPUhmTu82fw+7EY6wp2ZE3xvuoGoKw1bcZ
	44JbPOBlCLYjrfGRMxJD4w8FZfzOvFwz2wsE0F/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a39634f-b47e4161-5b46-4a87-bad4-48d3ef47b295-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42458d50d9ce46185f46e45365e3c30b49d59fd6f1888b07f6266e0d09a66ac2
Date: Sat, 5 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646486184
