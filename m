Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5778C2F5B
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 23:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651449058;
	h=To:Subject:From:Message-Id:Date;
	bh=W59fsTghum7RXTZICJY5sZdgaxWJP5GDLgO6tdBASxI=;
	b=HKg/SUsAzyeYbrLIztW8AikbUlWZSY1DS6f/XmBDfNNpTCdwubrzmFXzwtcf0wQ6
	nwjad11XdcKj7XZJTHht4L4KSn26QwWXajVj60hEeR2UDeY1NhV8kfZXfDWuOQIg5Dd
	8gmxMV47yFfQK0PRzYauzvTNBlxMYdqtGZVClKQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651449058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W59fsTghum7RXTZICJY5sZdgaxWJP5GDLgO6tdBASxI=;
	b=SZAhPrffufa2IPiXtDsVkaAzNkj9w2+ZQHMzc9IBdMeJLimBNh3C+zdHcRTXJKtz
	oTV5ZAdb4X0aVRElcMpU/Bor1SUsClC96wahPAAYaJpnRGK/g7tyxmcdLkTgaCy1ncI
	8Ht52ZaBYyXUxaz7XMhbbMawKDmomdD04lYUq6ig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808208d3cb-e4d81989-0d76-4e61-bd4e-c4696b38ea08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23aa279fc0c959aab4999bb6f50edb20421f09f65337948668ed87d7e1e7c64c
Date: Sun, 1 May 2022 23:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651449058
