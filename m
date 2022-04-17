Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14767A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 10:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650189658;
	h=To:Subject:From:Message-Id:Date;
	bh=B2B60k9CYgEKnhl9/fbb0auMqLUOV+ZwJj7aLQzyr/U=;
	b=Y1HUbiLe5a9MI5OZFDQqW/87rBr9mtmYbFcAqe5o/ZFGmsbeeOqKA8q92/gbKcu3
	hlVltSPu0hSjs38Al76pnux9LYbI5eAjf3Y7rlfWaKunZAIYabGdUSuSXUMu1fWqPU8
	tDnMDK2RFWr+AUmB+yevCqaWGI9Au+ADn6AmwpRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650189658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B2B60k9CYgEKnhl9/fbb0auMqLUOV+ZwJj7aLQzyr/U=;
	b=hNBT2LfI67r1IqgrRgG0bAha5OC0ZZXw4uqBqX/jVSoS/e8yha3Bz1FTtErj7lde
	D9nFJfnDQLA2wN8mhw3McCU4w/eU4bR5ENp0+3R8sNLtAVltnn2O+8LYPm6qZX7DXia
	61tM/VT/MW5UPggamJDOey4WdYgOmczVLD1tg4NU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018036f7e891-394ae98f-8e65-4e0c-9687-c7095f6b5e11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3441f2455416e694429c0362e364f13eaa9094ef161d6ec5238681b9495d8e4
Date: Sun, 17 Apr 2022 10:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650189658
