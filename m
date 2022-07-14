Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CBE6004
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657820212;
	h=To:Subject:From:Message-Id:Date;
	bh=7v5B6GWUSkxk8tkEjsFtaHQQM70HJGRkssliy6UGQ9Y=;
	b=f2tE1qNsF8Jk+/lvls6Gv4Ga+V/OB/sqSDK8TUk6n4tkG16l2pmvViRBES6cNudp
	LyH+DTzjf0yNqQ+NHyA0Ku9eAS6PWShCCXZvCBQ8FKatGxCm/955yhyaNgndrinEFXV
	65WJKxypI72NafMaNTuN2ecsiSP5Gcf2rO8hVhOA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657820212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7v5B6GWUSkxk8tkEjsFtaHQQM70HJGRkssliy6UGQ9Y=;
	b=bux9L8XZtu1qwnPoifOE1FpBdGCRPP2s/md5BQwsaknvV2kutiudz59GqZFONqOS
	ZKN/TPgte4//YPnnIjkrZ+zks6/7zvxbrxPLq8BS5zR2ERgWc765mLMJWUtog603oJa
	VZ9mlDM7HRO5bcxennPLiFS70wr+sceyS+A9Z58c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fdc8ec31-7305d060-5b7e-4eb7-afca-d8f24b717959-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce38d34139f650e75d9d6c36ee76d3c1485c2f3ca36fb2ef738a436fb62b69f1
Date: Thu, 14 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657820212
