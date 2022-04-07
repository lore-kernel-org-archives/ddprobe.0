Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9AE2564
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 14:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649340838;
	h=To:Subject:From:Message-Id:Date;
	bh=uFTR1dnuzq0vRnQjvyJALFU6zmJHENjqwaNMAwQwFLQ=;
	b=mn6bJ4PwCqy4bqJ93ZlCqv4nn3/D+auM8J/vRSSS9sg51OrnvmETwuTvzt/g3Hiq
	m9wlIe/d7WgieaOs7Gcp/M+CGG5npJPm4tPOPxJyqHK38p9IbailUS8EEXkew8D9kM0
	Tn71l6p3XuL0MAPWwWYRuZuuVhdxM0WxnW+XTzNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649340838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uFTR1dnuzq0vRnQjvyJALFU6zmJHENjqwaNMAwQwFLQ=;
	b=kInr78kp3Uw3HlwVFTcFfWlSqhSiWLWL3qfVcdeaen0fxQ7VJi2gDevuCesvyxiI
	iCLgwzgpd7+/6veJQQUBqWZE0p382Ye75d7VpBBLYiLytGnUAKkVdzUhsgg9Wa56I9L
	N+dd2DhsibLefODW41bjtoRj6oMC4nO/DyWbQNvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180045ff190-3a664226-264d-4749-98a1-9bab4dc943f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 506c505a5aa29885e86b1921208ceda8742050385189524c331c139fe1023d05
Date: Thu, 7 Apr 2022 14:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649340838
