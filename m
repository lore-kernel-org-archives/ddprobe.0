Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12D920EA
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 03:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652411219;
	h=To:Subject:From:Message-Id:Date;
	bh=8pyh2QxnI+DfrxTaCEs0vhC4rsVQMqKAjj8vEPINrhQ=;
	b=aIWUMXZ1I6aVv6FcIJ3buSCgoqnHqKjpMVLQXsXzoIlQg8FwwQINcMMCurnGYlom
	yb4QQBhGf9J6GcmpIAShz2MXgucerevKnQPIP4AAGDxaohe+AGRKyLeA1eYxRkC42ry
	oAGDymxuohWXAc/DCadSYXaKGTd+txA68ycYDnOA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652411219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8pyh2QxnI+DfrxTaCEs0vhC4rsVQMqKAjj8vEPINrhQ=;
	b=YqvwyVnnckChRSFis9YiTR2x1Zevac6LFw7uzS6NjuXbLx4qjitkbWIesJs2tkOf
	fLcskd/PNP6euAj9XmfaFmiwfGu0PATfQU2DG7ALa/3f8tMxtZnUOYcrOpZax4IpLAY
	rd6CUy0Aa9fuIA5LSyfD1HzPTLzj0+aSJuckzJGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb623d2a-d5b1c366-ca02-4cc0-909b-4da0f829f680-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d5b6f35c414dbb9688ceb6fb7d06ac1121742a7594987420c3bb6c510b5cfc8
Date: Fri, 13 May 2022 03:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652411219
