Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90BAD7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647056784;
	h=To:Subject:From:Message-Id:Date;
	bh=Zc4YpKv1drQx9dJYZ76zVOuQMNnhhXP1q/vQXX+Ostc=;
	b=eobmBGts17/uXYc2kutDHsoczGcCWTR9emLhg+UWC6lzw4nMtjquOxQLqIynAQ62
	7dFVmAF/Wv8iHnVve3xxG+DM7kMUSd8pN5IN5GPSZykSt0bxXbTd5s/+ixSfS0lfOMd
	xCid6BQmn7UXX28oSVS8IRjx5pIX96SX5teT+hO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647056784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zc4YpKv1drQx9dJYZ76zVOuQMNnhhXP1q/vQXX+Ostc=;
	b=iZqO36NMmRYanN9t0lpUQjlloMKbOTUp1UX9XZPUjtgbZNXFBNYk2LDctbnhYGI9
	wWWBnue08bGlu7IRGJalwGdob1/AmZjDuxrPzio8V1M3FkjyPVOqwSUm/A8KStebM2O
	XvPkw7rlDq1Jokir7Sv/i69p5j0xkLJkDZKY/h+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c3c0d3b-84269cab-8e1b-4ba8-a629-dd192a813578-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fb56bed353ce0b85a31d3383404c87538bce10e4201fa65bab0bce6ebb6abf9
Date: Sat, 12 Mar 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647056784
