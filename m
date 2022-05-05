Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBD67F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 23:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651794658;
	h=To:Subject:From:Message-Id:Date;
	bh=df9CE9zj7g649URrSANr+aqDWYFrhy+y7ciepfBSV98=;
	b=WUuuTk/ePFcJ5yKEVyVzVSb/hTcAcbmKUj/tHZLrcq92Huwb9XnsdFwkq+uFlSfv
	eD02b+ZDKmEfJ3sh0g/6uTn5CNVKBChoHQU9tS31TBbN7Uze301XTadOCfDPq2HrVeP
	5hdPjoN02lms2RORlXJF3ZlipGFPL9Vg0PoJV9TE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651794658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=df9CE9zj7g649URrSANr+aqDWYFrhy+y7ciepfBSV98=;
	b=JI2Ee2+5lgp6qqVEsOnSUA9/4axnCUo5lTL6nU4Ia6iLbveQ0pUsVdr1w7StFIdF
	2BvV8FftHf382sbVeyjVxr1mtIEE0aWwV4tFKGggcdEIv7CoCUU+s9ZQIyD99qe+sD5
	LlvzGGo1Kcl/S1EsGY3WOoe7RQBoqrLXkTUXfak8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018096a243f9-74986b71-35a9-4755-97cb-e7540341418b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7167759a9813d703d7d2e234156e51bef04f028b1d66cc6e2ab8e63612eb2f7
Date: Thu, 5 May 2022 23:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651794658
