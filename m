Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FE62F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645956984;
	h=To:Subject:From:Message-Id:Date;
	bh=MADMvWbgBZmEFbqkKoCrZWTvVF5qOMagVSvYQTd8Y/A=;
	b=Q/YHyJC/AZcVYv8LOcV3w28ceNceiPM/tkZZwYSS7p37HtpD7cgOyKun6VANT0RV
	bGyJxR2MAC7JcAYZ3BcD4rb7e/2jZxPoaVcVePnkr1AKg3OqOWxZthBR6uTpxOinE/G
	k7eN1/B8+HC9yWkG80tHi7b+PMgeNssI6xosItXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645956984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MADMvWbgBZmEFbqkKoCrZWTvVF5qOMagVSvYQTd8Y/A=;
	b=JRoC8qbeHh6sDoOCc6AVwd9V2GgtLeSxDgZLIGYVurTiNDLoCyPUqYWyeEj3TUL+
	aGrTRzdVAUuHJPF03xKOj+OYNVKmuAU0YZZgq/Kz76fWPSQq9KVUHl0uU0WDJqUOJaL
	gX4CudIaewFGW8Rs2M6AFWwvdSHThwK4+mW9tqaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3aae6fd2-843a48d1-fe5c-45bf-9624-25d0705bf4a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 547859c3124abb6d7c3e99186a40a3a1ea1291f2f3a5ac88d0c9d728586900db
Date: Sun, 27 Feb 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645956984
