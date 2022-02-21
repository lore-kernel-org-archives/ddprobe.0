Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1378933F9
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645480585;
	h=To:Subject:From:Message-Id:Date;
	bh=Vqs7L2mqo3PH+h+9LSj2yDEIPH9DbMzQQcG2f5HuAZ0=;
	b=MY4tmxEHj3KM/A0edf5e3VysRNKH2A2PnHSeitI/1senOtec7KjQ3+sszLg+dv+I
	c2QfrF/oGT00UpIMme5Ltv7Id/7umqdMn4c+0ZiRjFRaPiKx3QpD/bKFJ5x6i4zuezG
	Yu5yuX3zv8xjG0WXZnSpBXnCd5MzO3L8XtiSN1wQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645480585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vqs7L2mqo3PH+h+9LSj2yDEIPH9DbMzQQcG2f5HuAZ0=;
	b=DJ6N5Z/DnnvwccOwd7zRK+OL8k4oB1Slq5KSZtCG00DMC7l/WKlgrRKXIsD1BvSp
	+TM06MMsBU24pXEupRg96t0BK/EQWUEq+esE2ACmIBs7roukjucKwbNHvl3FHYflBt8
	67lFWFeUvOM22gP+W9rIFqSxmFA/0U5TRqgtiV1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e49267b-0cb4b996-9b0e-4f6a-aa34-3cc968c83f02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7869ffbc7b9cc4e6ba271c690f7f81a987d599a57076490bcdfe4802f1dad25e
Date: Mon, 21 Feb 2022 21:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645480584
