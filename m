Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90B829AB
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 15:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653233219;
	h=To:Subject:From:Message-Id:Date;
	bh=oJHxmv7bp3ofJq7e7mHX8rn/8O1BdpLcMkTgUYibDQ4=;
	b=eoV1HAagmUykaujcyLAuo8E/MJunclOU9WJXxmc0GchEXlvxZwZyCP/jWtAxhBL8
	WfStRaBSneohffGLW7wWEjlbEqDL/RysBTP3yVfx3pY0N0F9aPcOpW/oGA8lK86fx0U
	Va3tjlwVnW5/9sFJTw+Br26gsVKJohUOFoDPIVhk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653233219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJHxmv7bp3ofJq7e7mHX8rn/8O1BdpLcMkTgUYibDQ4=;
	b=YNmY1RtHI21MJvEwq6luaPOesmLKvN3sq9HEXxmHPjmpcKAQZAOeytWh8yzAsThK
	Nx4GB5xbfHadKnhLklgkEvhXX0Fuw44Ew0emST27TNoPRvP/L7/Jds6WXJLpyFTgW5t
	OqAgscLnaYW+8dd+DdadPQcT6D17cCH85S6IsvWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ec60f6c9-f2030312-2a86-4bb6-b930-18694f7acb46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 543da60913c89fa93f6cb72cec1010b2185321ac08947455a41754d2cb15fc10
Date: Sun, 22 May 2022 15:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653233219
