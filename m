Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF18809
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657277812;
	h=To:Subject:From:Message-Id:Date;
	bh=vY/QxA6G/CPH/wkcvPzZa9Ufv/L2FpX7B6z1jcNT81w=;
	b=YeKgMNvuSv3P+bHED2iWvlDGY6f0PeR8MSRFzmRBU+Go/sA3zXRUBD/tPbrIVGIq
	58R1Uq/6Hp/KtvjYrKbeSuaUuMXXq8afPdByeQj+FXJsIaz6BQqQT+d8LqmHnfst++n
	doQ+o0VT/GdsZmFun3zrDoEpHvg4g8n/W1VEh9Jw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657277812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vY/QxA6G/CPH/wkcvPzZa9Ufv/L2FpX7B6z1jcNT81w=;
	b=cM8aD9NPYMt20twUWYL8J8PW8/QHqdl/IBOtfjFI8QoloqSddbnG/7+9aQjonh3k
	XgK672F7N1nLXkUvROJOTfnRkHDDf+7tD+NQvIeOVZriun9SWrqTF28ft8FKkjjyc4F
	uDoBDBqFr6OQWd8kqx93tucsjbacVBDi35UvSZMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd748e64-afee046d-157e-4613-915b-b6678075d7b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc74d4802bce8e59686454397dc6c6d2feeb4275ca49ab5264e05ef4c2124ed2
Date: Fri, 8 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657277812
