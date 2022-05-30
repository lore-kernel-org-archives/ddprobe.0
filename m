Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F040D321B
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 17:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653933299;
	h=To:Subject:From:Message-Id:Date;
	bh=59OgN5GmOLuAUo3kVPcknZNB86C4baRB1tbjIbEKcjk=;
	b=TqGAqAQqnm+BhMs/Uz8Zmlr9YFH+3R91ntfCh2URAaGT3EBUvYKEmHCoQAK3bE7u
	smzu2z1xY1NgJlycRg4KfMiX2yUuBsX8tTDzefVNMVzP3+pgN7O3xNryFSDW5rGtudw
	30Y+GKQJnTkEBnNMqgqLOg92ZUTvS0McpC7Wjuhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653933299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=59OgN5GmOLuAUo3kVPcknZNB86C4baRB1tbjIbEKcjk=;
	b=A9afAwI4UHWh67TJMs1YpBquzwTrsFfg0a4BEr5CAmv7kdaxDdwDrGJR8s1izWwn
	8E0L46XXCcVwEhsgKWXlID1vmYQdAlHxX+LU7Tk9cbVFbfL+3qLp1hLkn8zX2BBVl9q
	GOLXgijgK6Ziit+oZ/H/QMc3vflfiT6a56TMzC6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181161b5651-0f822435-f154-4093-a7a4-a0496f925147-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e09ce53a5cf4f9e43c3a6be192ec908b2a907fe5281e789393b0657c4d75aa43
Date: Mon, 30 May 2022 17:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653933299
