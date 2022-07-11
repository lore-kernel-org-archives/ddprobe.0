Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E103C00
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657566412;
	h=To:Subject:From:Message-Id:Date;
	bh=p+WAMkVon22El2JuX+V097DYqiAEXmjPAR4DhOQqllc=;
	b=XVdhVhgLB5wfaueijUwTQ05JJtAbQWvdCi/F5JyHIMNd6s4CkQlaSjBgIUbjnkYl
	y64cz1KZS72nMvYt7qgTgLtq1vjSbYRQOFcJDQ23d9JzCgvzt9g4M/98JzE/Pl7qwyP
	xIeTNx0SensCwX7td85dXLkSTTXWfnPq+Fkc8TBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657566412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p+WAMkVon22El2JuX+V097DYqiAEXmjPAR4DhOQqllc=;
	b=d/cQEzvVq2nnUM2Mxv5a2bW/0nez2IJInVaCf4Lb1+meEDNS0gAolETc25ppZyEa
	9a1259jaZ8pfBNowvlxvrFDn7Dp6Kz1rpPKNy2SGFMnKBUp7eZ5MrBdMcH+Zkgmm5Nc
	KmnbIoaaHgforIlF3iKuRwSp5VuWb7NkzOEgIPzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eea83e41-dd57dafe-7e22-4a85-80bb-bbb5c881404c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cec7b90989a41088e421f3916956e8daeacdd806e1097840a985d6b289649885
Date: Mon, 11 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657566412
