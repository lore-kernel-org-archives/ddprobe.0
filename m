Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C75D10ED
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 03:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650425758;
	h=To:Subject:From:Message-Id:Date;
	bh=cg+nDCPjl8BJbEofRL6wExJsKDGvEoPpjq0kdEQ4LeM=;
	b=XTBl0dZ5LdM4RjKyroE8LZXSGsduMZYR7IYDE9UEHkvL+AoRJfLOxiuGNqSYoGc1
	ZhyjFcPKw78pywuCKAs7WTMHrpOjLwbgzQx3OhVnoTKVXUb9FheiuwUt/gajPYLKsVw
	v5ICXTkTIQKpZqEfOIWV7Aeh8ZCJku9qBQN1Dg/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650425758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cg+nDCPjl8BJbEofRL6wExJsKDGvEoPpjq0kdEQ4LeM=;
	b=WhH4TTGa+g0EuzfRqr2KEP2umQT//2A60fD/E8htvt91bNDqEVnOU9DN+fHmo/Y3
	TbTVpiu+qwFrS1PfpxcrltUcofEApCfV6nmUYD6XgzrUe5dz5AZJ1zP1M/yIE9rSJT0
	NCMo0qsMplAhZmVaRw2WMp04kPigl0LWIwI2CSkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180450a8269-e8b5bb23-d867-4d85-be85-00652135a75b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8a5b6ea308f07bfcedb3d56d7575f739009c61e2550c27740947490608429cb
Date: Wed, 20 Apr 2022 03:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650425758
