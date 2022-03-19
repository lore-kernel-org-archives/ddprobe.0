Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D614160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647716784;
	h=To:Subject:From:Message-Id:Date;
	bh=cKpRJjxxVPZRQPLLcpsFprXluMzqhTBpBxg9MA9Br+k=;
	b=EhQypoBaTauWdokEYJo4nUnFxIou35MVl29EQM6Rt4hfd+GBlJeJ42XDIWuNIAii
	qcFwXKx11hEYHAndA/jlTNPaDCPnrNK47x44RVDeRKb1sRPqFSudPZZtp241eiA8I25
	giyOUNk74HIX18WUcKfrzUGC9RHnH8yEhiQnJwsk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647716784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cKpRJjxxVPZRQPLLcpsFprXluMzqhTBpBxg9MA9Br+k=;
	b=GIxjZYaqMufIxLZGFkQqlVnlkUkNMnmRlwXpte6tTXr2iJtp8u+Isoztl7Z25stF
	+nwU5gaTa+8XU7rEReGApNbDF7tr+SQD/oHYHun8HZ7ne+itqTqe+ex9FuJoRFZpMwC
	RLNDmZOA4KFwffMcu8/MNm73H+YpQAhjRwvquo34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa392daa0-2b3afebf-9f4f-42ef-91d1-7d3f6c9225eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f3edff407338e8a6bcf7f054d1fe1a21306f72293cf7754cec996adf8e795c0
Date: Sat, 19 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647716784
