Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0677E8
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659673853;
	h=To:Subject:From:Message-Id:Date;
	bh=Bl998vhBKaFACrxmsrlXCM6g6o5auQVlWnl+gNh1laM=;
	b=R7ZP1OfJZTpK06i0lQD7F/0rNbcondUNK3IJ9158hfbim9TQ0mJk3Elj01HdQCN7
	Wlg54BTdEWChO1oFsQbDcPAX1+EIDib/mc0dkCgiP8chQ1iwvfgzO92XGUl4FJTP9Ky
	YK4/HLrL/k5B1DpToNaMiwkE43OvsD4iLcFF0N7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659673853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bl998vhBKaFACrxmsrlXCM6g6o5auQVlWnl+gNh1laM=;
	b=JrrxnxZhHBWAW/zNt7P46x4lvMWPaRVPfjUK7opYhwjMsnG1gisr0Xcgd5bf5iFU
	nuAMhLAR/31ATpmY4/Wf/kiMh+gadA5/NURVbeFkAali/ssxskdjwjwjZHWWtBA3bnb
	6Xg4qfx9ceiNGHGY1t/WXLIzghb69HytLaCTySuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c453a82-86395172-917c-45c1-8cd5-c4c6877d20ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f89cbf837082c78971d1c32c88970a9607af55f0641fc6ad8801f580b94d8baa
Date: Fri, 5 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659673852
