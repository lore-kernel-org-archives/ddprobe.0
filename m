Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FED77A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 14:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654869959;
	h=To:Subject:From:Message-Id:Date;
	bh=9lFNH8Z1r6WLDB7KnjjMyh/MUbfHuGMj7y6YPiWs8lo=;
	b=g7mOj8dafNVidp1Qc7hZhWXxcJEd/ZI6g7Du7wal6M3n4EwHeHRzh+nMAKG8im3z
	b/qsaqZPTk988m/asfZwuwXSZUk6V697dS/+ctEN4jkPGo9ECfWDyZ3d1vXLu4b2Fwf
	plNCdFWyf037FkqsjWCElx3Hr6ZD4nLgl6Tzq8c8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654869959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9lFNH8Z1r6WLDB7KnjjMyh/MUbfHuGMj7y6YPiWs8lo=;
	b=a3Ub52ENT0RZcKeWRqniRT3npF1ApaJuBWNzqnhjPeZpS4Nlyx8Ay5CLu+ghajMY
	xF0/ManvpMiIrOjb3sbOO6pbYPA/3vScdY9Sv4ZX7/MyE4cTGRQ9/86VBMx3EApqyii
	IOZ2PJWrn6TbhP5hxz7SAuLrzz0+042B8iRW/gww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814defa28b-d6b0f9d8-0820-45ca-b837-2ad012902111-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b76776275196b893851ea4b87373fd9a824c911d94ac61fe135584d55910750
Date: Fri, 10 Jun 2022 14:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654869959
