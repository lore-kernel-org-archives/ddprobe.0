Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A836B2F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647538884;
	h=To:Subject:From:Message-Id:Date;
	bh=gD/o3djoHgm5Vw+AeFGJbwCDVORokv+/4OpTA5pToos=;
	b=IJVDxju8zcCJc6kLp/50oK62QsxpJ+jpGDA9dhQrjhCFjnQ7uz1hohnpO1/ZHBN2
	YvS29TOeXsWPmJ7HUSRzFpvkx4jbP+wZuVEqScaEu14GkIdyTyq1ArQi8uZ9fOgJPXh
	ruBGgaRW/H/QEv7fEfICfMnngs2rxAg3t5JgWjU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647538884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gD/o3djoHgm5Vw+AeFGJbwCDVORokv+/4OpTA5pToos=;
	b=Mqs2s5V0MQxU3tUlMQVr95BdjCZfBnsC9wyMnPJecTHpQuhLZvzGn1Guzm9in1B7
	rRIBhG1nIO0fCH7zxaxWlpDS+cPb6ur64kjiX82FwsPPNYqYjWqganXKg45zrKLWw1E
	6W94/QwN2lCJ5I6plF0p4H17Waa6ytAAvF4H6RxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98f85099-6cae1b1c-5e3b-4010-a9d5-cdc35b22552a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a46df6d800f8a4df708a6b6f82332b0487d97c0aa2d830b2050c258b9a1abe0c
Date: Thu, 17 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647538884
