Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E35620E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656301012;
	h=To:Subject:From:Message-Id:Date;
	bh=ggoAnFnhuq7PMjVvW9bHnQ3h9n/kuo8XExtydQnq+JM=;
	b=kTOkoQdIRz1xi4pIAr+cy8yzfRnq3dIHsMehPsjt5sYxWUSuBUyUVKhuyVJLKSiB
	1xtjesA/gLbqpyz6EaYfTwZUNDcZ2wH8vJwrp7dAl+ofnsElEC5jT37bI33mih5DLux
	JcokRz8V1rmWENxfJrsJz+MGYU8DCY+InDJbHXME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656301012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ggoAnFnhuq7PMjVvW9bHnQ3h9n/kuo8XExtydQnq+JM=;
	b=gz9dDxB+jjOLazEATrMQWNavRw9sjY1KSKIpcQjCifTYsizdcstW/rpYkgsbGRl6
	5Gb9AZS+VjojMcDtvXtpzHIShjY9DEW7F3uvrqR3uhWCmDESGJFqKJSDa8T2+wurBum
	nE+DG4apHUkFHnr9OQYnQIfbg9BESvNWQPsUq8is=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a33bc578-fe58124a-ad8d-484d-995f-faf0bd3dd82e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d50f89653f98c99c1fea605b20b731910f08f79282649982ee0d4578a84fc96c
Date: Mon, 27 Jun 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656301012
