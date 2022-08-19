Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B244697
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660929652;
	h=To:Subject:From:Message-Id:Date;
	bh=TLyjsmA/w3vGfjWgV7UbOonHvO2gOV7jx8r9xsnhy4s=;
	b=FYgchpeVojXfuCRLpKZgldIIXnW2veIAmu35wCnmFJP5VUp4yysQYx0Ev5MofzVE
	9s5FN7qUb+p05rIOD0rVNZrUiFI3LziT024ARGzXhoOvPdS8q5vzHyj4pIF43wD2sMW
	P4l/dfkWeOuVfSks+SrjRbSnD6L4AEo+dfNmSOKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660929652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TLyjsmA/w3vGfjWgV7UbOonHvO2gOV7jx8r9xsnhy4s=;
	b=g0OOWx0nXrURp6+iirTESkc40/yxUxyidaW/Lsu969ZiwxLeBIyPCVvXY3sn+xod
	YnfubLzp39E3THX1rwMIj8mDUwIgI98SYOl53dprgg/KJw9ofn+LX31ofQs2kKbQD30
	GwkQyvSXd8sqWBMfTTs1j+fUBI269/mZRLwU6XY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b71f3780-4573c43a-a0bd-402c-ac93-06a33a2a72a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67534c990e908babf7f3bcb92107002449a4a22c4dc722dc32bdbb97a584f327
Date: Fri, 19 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660929652
