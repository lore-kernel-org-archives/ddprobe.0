Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DD17D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 10:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644834007;
	h=To:Subject:From:Message-Id:Date;
	bh=a54xvkED2X+HaKH3lwU4wlCFudt8i8lulVOM6YQQq2c=;
	b=mHTinWGThk3uJZx5M4uNiPW8Ja+c/2rjYmoCqt/2QKeqmRx14V2eXNFPsXg2ZVbA
	E+3ITj664zIc0sNEL3cDMnaVW+2y88QkZaBucMhZMlbqza900smtca0gjgdiI92lvlU
	97e7Gk5ZHyQjZiQJUoJnPsALqytfKC5eH5R5fTDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644834007;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a54xvkED2X+HaKH3lwU4wlCFudt8i8lulVOM6YQQq2c=;
	b=RY4c3FNxiqyS4DOwo7UMvPyvz+r7q8PEqKvD6Rj45td8pV+ubyNL5pMuFbzQbXyC
	5SrkroIjMeMBCkXxrPkWRnIM4acFuh79OoEwJpDZ2AIs9wBhumpHHaT8jMHXJ1b2h68
	BAXjy6ZnhDgcdAeDa5oQ5PQh+65LWOrE8BC5cxos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef7bf28cb-47d3e5f0-a26f-4170-82a2-3cd18944d065-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16b191bb3c35c770e9ff7f6bacb6559dad33b973904cca400bf7637336e4bf3c
Date: Mon, 14 Feb 2022 10:20:07 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644834007
