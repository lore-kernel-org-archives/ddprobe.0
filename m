Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 826FF2576
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646202984;
	h=To:Subject:From:Message-Id:Date;
	bh=RyspWEQmrV+zDCMZRDjI/Jyt6zDvYjtaWNfW2HYTJxU=;
	b=F+q3XcouLm9NQl2oJXkukUru1t8XB8qfu0jC0runyI5sjRJfitKMUMlb7wYqUnKZ
	Y0fhtewuxxkDQXRU7J4jee+t37sYyrRYeiD+XIUdIhIubr/JRcKXDh0PmWQPpWb50UE
	z2s4pOLorV9SFLZ5Kfmq4ojzQj8PZa3ydZO5CrEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646202984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RyspWEQmrV+zDCMZRDjI/Jyt6zDvYjtaWNfW2HYTJxU=;
	b=Rn/NS1HOzPGdtBQRfALNsw/x1HDo8ImZkhn6RCvTC9OExnv4k+aAVvHWANNkzh0Y
	W9CfOJAfVpPgego3+qvwj26obvMkm1EkcOY0OhlF/tsfCFM0of5/RcuzLZ7fUPgOMhk
	Xuuw3WGN6WJARGCmwSaw8Md1W0F1XQOjS1RtQ+cA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f49581932-bb3d0d3a-11b5-4df2-a6b4-fc6eabea6a13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea00f1a1a883044929c8229af4e7576c360555fd2fcfe1d0cc96eb6c269916c9
Date: Wed, 2 Mar 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646202984
