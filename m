Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F9646AD
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 08:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649750878;
	h=To:Subject:From:Message-Id:Date;
	bh=WVjE8m6ouJQ6mx3ip+r5FXLg/hXuFBZRzStUuzh7dpI=;
	b=EuNLTQNoQNU0pHHPyYxwtLznPBHb6e/HquMBKVuz0Q2nKqnUU6PdVDW6k3hxwGKx
	tepztCc/Gbdtb90Q+yl8lWNMVCPUpE7I5JL2H68tjca5mcztFW9vGdsiKP8up1FLGHP
	2frGgRJx9/jxYFKGNOopAVVdp9X4cLaAgLV7bEOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649750878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WVjE8m6ouJQ6mx3ip+r5FXLg/hXuFBZRzStUuzh7dpI=;
	b=WVNjII3YpNQeCHCzH+5VMyVZn5OBHtV2RUN5T8FUpvXrGg/Z5qiUCyiRjBflpYRW
	PdBZa9EIpjI5ibW9LcbKEo0zCaoRB7I3v+bh2oo5K6OVf4ZFF+iZwUTgrIkBvGetyyO
	j4BLR1h/P0zeoYEe3X7RPMyjU/2H+aWZWuZ0vVb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801cd0a829-5c5d10e5-e23d-4c51-98fe-2bdbe2d39fec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e104acde9f8a2ba025a1dedd16a1b73a7666da5277055e9cbd0c394f55cde84
Date: Tue, 12 Apr 2022 08:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649750878
