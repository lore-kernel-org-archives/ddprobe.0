Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290781FA1
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656749812;
	h=To:Subject:From:Message-Id:Date;
	bh=VXgMeNiwedJ/rhuadsm2STHE+qiM7fE2RC+ouNMc8FU=;
	b=gmmMHVBAjCUinfCQ8sB6ZkluozaVYc3I15GY4/gWgdDzzTvFn02We2N4WheXBEgK
	heav92zXxtJJvODGRJ4nujP6MSfbP589NlXFQZDncwxJFWIDv7fOLs5Rkq2gA0Uv5Ao
	y1lY7jJINrQ0UJytfVxbf/4/nJDRvRcGy1v2vRkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656749812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VXgMeNiwedJ/rhuadsm2STHE+qiM7fE2RC+ouNMc8FU=;
	b=Zpq9Yyvf02LbwzgLYCf3WJGRwkYWM1blEkS2q5mpd1flv8SLNFNMrToMPX5qTttt
	/r5qcnE/Di635zY2Zl+PSMsdZ4aZe1qfQuZulj1kE5zzlMNqc6O9pSjaFZWI5RbB+T/
	ICI0sgZDuIKIfYPKhdpEQKIZ1OQI3bj2DshLwF3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bdfbea80-aee589e7-2c1e-4236-9696-ed13fd273aa5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e739fb5fcd9a008d920ef13d2581241f1b58f4208678bcc25bf63ab470df5266
Date: Sat, 2 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656749812
