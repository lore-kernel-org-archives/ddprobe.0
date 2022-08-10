Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB0A18E
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660095652;
	h=To:Subject:From:Message-Id:Date;
	bh=PJqRo5TORD4juekt/HQsuBTXr0DXdMguvNl+9SNgiss=;
	b=C2UcDvbBQBLgvYpYfbppiQ3diWvLGvmSy1VpRK9Oq3nuZHKM7x6TvgtVNOwuYnT9
	gOCbMDR8hvMMiHTa7lPlJ3tIJN8I4S+N43agDR5s/dS2GqS4rHzmgOY5cTpK0MQjf/r
	2Mhsd711Rk1AVDQPnbgpg8EM76YQPOO8+cajOO08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660095652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PJqRo5TORD4juekt/HQsuBTXr0DXdMguvNl+9SNgiss=;
	b=QGDFc3ZNbFVRJNbc8HIQFmRuXdGM8sDwycrbvXB+GguQpArAhgDrW9SlHNHEab6x
	/vaJWV23AHqqbKo8iQyW/udZ1T8ZqfkYId/MN5uvN1lDMO0O0bhUa+DB9AuWexhD9Wq
	3rFTyUTPNVMkoUDZ8N2DYTNbMSSjK3HJeJu8PW/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018285696332-e7ca64ae-ee97-4b28-ad18-5bb6b06bf7ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01bd83f827c2739f94a099a63c4b93577d70296cb45dc5a261b84873cc558063
Date: Wed, 10 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660095652
